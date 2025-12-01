module TypeChecker where 

import Lexer 

type Context = [(String, Ty)]

typeof :: Context -> Expr -> Maybe Ty 
typeof ctx (Num _) = Just TNum 
typeof ctx BTrue = Just TBool 
typeof ctx BFalse = Just TBool 
typeof ctx (Add e1 e2) = checkBinOp ctx e1 e2 TNum TNum
typeof ctx (Sub e1 e2) = checkBinOp ctx e1 e2 TNum TNum
typeof ctx (Mult e1 e2) = checkBinOp ctx e1 e2 TNum TNum
typeof ctx (And e1 e2) = checkBinOp ctx e1 e2 TBool TBool
typeof ctx (Or e1 e2) = checkBinOp ctx e1 e2 TBool TBool
typeof ctx (Eq e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just t1, Just t2) | t1 == t2 -> Just TBool
        _ -> Nothing
typeof ctx (Less e1 e2) = checkBinOp ctx e1 e2 TNum TBool
typeof ctx (Greater e1 e2) = checkBinOp ctx e1 e2 TNum TBool
typeof ctx (Not e) = 
    case typeof ctx e of
        Just TBool -> Just TBool
        _ -> Nothing
typeof ctx (Paren e) = typeof ctx e
typeof ctx (If e e1 e2) = 
    case typeof ctx e of 
        Just TBool -> case (typeof ctx e1, typeof ctx e2) of 
                        (Just t1, Just t2) | t1 == t2 -> Just t1 
                        _ -> Nothing 
        _ -> Nothing 
typeof ctx (Var x) = lookup x ctx
typeof ctx (Lam x t e) = 
    case typeof ((x,t):ctx) e of
        Just t' -> Just (TArrow t t')
        Nothing -> Nothing
typeof ctx (App e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just (TArrow t11 t12), Just t2) | t11 == t2 -> Just t12
        _ -> Nothing
typeof ctx (Pair e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just t1, Just t2) -> Just (TPair t1 t2)
        _ -> Nothing
typeof ctx (Fst e) = 
    case typeof ctx e of
        Just (TPair t1 _) -> Just t1
        _ -> Nothing
typeof ctx (Snd e) = 
    case typeof ctx e of
        Just (TPair _ t2) -> Just t2
        _ -> Nothing

checkBinOp :: Context -> Expr -> Expr -> Ty -> Ty -> Maybe Ty
checkBinOp ctx e1 e2 tArg tRet =
    case (typeof ctx e1, typeof ctx e2) of
        (Just t1, Just t2) | t1 == tArg && t2 == tArg -> Just tRet
        _ -> Nothing