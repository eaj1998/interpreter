module Interpreter where

import Lexer

subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then n else b
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mult e1 e2) = Mult (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n (Less e1 e2) = Less (subst x n e1) (subst x n e2)
subst x n (Greater e1 e2) = Greater (subst x n e1) (subst x n e2)
subst x n (Not e) = Not (subst x n e)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Pair e1 e2) = Pair (subst x n e1) (subst x n e2)
subst x n (Fst e) = Fst (subst x n e)
subst x n (Snd e) = Snd (subst x n e)
subst x n e = e

isvalue :: Expr -> Bool
isvalue BTrue = True
isvalue BFalse = True
isvalue (Num _) = True
isvalue (Lam _ _ _) = True
isvalue (Pair e1 e2) = isvalue e1 && isvalue e2
isvalue _ = False

step :: Expr -> Maybe Expr
step (Add (Num n1) (Num n2)) = Just (Num (n1 + n2))
step (Add (Num n1) e2) = case step e2 of Just e2' -> Just (Add (Num n1) e2'); Nothing -> Nothing
step (Add e1 e2) = case step e1 of Just e1' -> Just (Add e1' e2); Nothing -> Nothing

step (Sub (Num n1) (Num n2)) = Just (Num (n1 - n2))
step (Sub (Num n1) e2) = case step e2 of Just e2' -> Just (Sub (Num n1) e2'); Nothing -> Nothing
step (Sub e1 e2) = case step e1 of Just e1' -> Just (Sub e1' e2); Nothing -> Nothing

step (Mult (Num n1) (Num n2)) = Just (Num (n1 * n2))
step (Mult (Num n1) e2) = case step e2 of Just e2' -> Just (Mult (Num n1) e2'); Nothing -> Nothing
step (Mult e1 e2) = case step e1 of Just e1' -> Just (Mult e1' e2); Nothing -> Nothing

step (And BTrue e2) = Just e2
step (And BFalse _) = Just BFalse
step (And e1 e2) = case step e1 of Just e1' -> Just (And e1' e2); Nothing -> Nothing

step (Or BTrue _) = Just BTrue
step (Or BFalse e2) = Just e2
step (Or e1 e2) = case step e1 of Just e1' -> Just (Or e1' e2); Nothing -> Nothing

step (Not BTrue) = Just BFalse
step (Not BFalse) = Just BTrue
step (Not e) = case step e of Just e' -> Just (Not e'); Nothing -> Nothing

step (Eq e1 e2) 
    | isvalue e1 && isvalue e2 = Just (if e1 == e2 then BTrue else BFalse)
    | isvalue e1 = case step e2 of Just e2' -> Just (Eq e1 e2'); Nothing -> Nothing
    | otherwise = case step e1 of Just e1' -> Just (Eq e1' e2); Nothing -> Nothing

step (Less (Num n1) (Num n2)) = Just (if n1 < n2 then BTrue else BFalse)
step (Less (Num n1) e2) = case step e2 of Just e2' -> Just (Less (Num n1) e2'); Nothing -> Nothing
step (Less e1 e2) = case step e1 of Just e1' -> Just (Less e1' e2); Nothing -> Nothing

step (Greater (Num n1) (Num n2)) = Just (if n1 > n2 then BTrue else BFalse)
step (Greater (Num n1) e2) = case step e2 of Just e2' -> Just (Greater (Num n1) e2'); Nothing -> Nothing
step (Greater e1 e2) = case step e1 of Just e1' -> Just (Greater e1' e2); Nothing -> Nothing

step (If BTrue e1 _) = Just e1
step (If BFalse _ e2) = Just e2
step (If e e1 e2) = case step e of Just e' -> Just (If e' e1 e2); Nothing -> Nothing

step (Paren e) = Just e

step (App e1@(Lam x t b) e2)
    | isvalue e2 = Just (subst x e2 b)
    | otherwise = case step e2 of Just e2' -> Just (App e1 e2'); Nothing -> Nothing
step (App e1 e2) = case step e1 of Just e1' -> Just (App e1' e2); Nothing -> Nothing

step (Pair e1 e2)
    | isvalue e1 = case step e2 of Just e2' -> Just (Pair e1 e2'); Nothing -> Nothing
    | otherwise = case step e1 of Just e1' -> Just (Pair e1' e2); Nothing -> Nothing

step (Fst (Pair v1 v2)) | isvalue v1 && isvalue v2 = Just v1
step (Fst e) = case step e of Just e' -> Just (Fst e'); Nothing -> Nothing

step (Snd (Pair v1 v2)) | isvalue v1 && isvalue v2 = Just v2
step (Snd e) = case step e of Just e' -> Just (Snd e'); Nothing -> Nothing

step _ = Nothing

eval :: Expr -> Expr
eval e | isvalue e = e
       | otherwise = case step e of
                       Just e' -> eval e'
                       Nothing -> error ("Interpreter error: " ++ show e)