module TypeChecker where 

import Lexer 

typeof :: Expr -> Maybe Ty 
typeof BTrue = Just TBool 
typeof BFalse = Just TBool 
typeof (Num n) = Just TNum 
typeof (Add e1 e2) = case (typeof e1, typeof e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
-- Implementar typeof para Times 
typeof (And e1 e2) = case (typeof e1, typeof e2) of 
                       (Just TBool, Just TBool) -> Just TBool 
                       _                        -> Nothing
-- Implementar typeof para Or 
typeof (If e e1 e2) = case typeof e of 
                        Just TBool -> case (typeof e1, typeof e2) of 
                                        (Just t1, Just t2) | t1 == t2  -> Just t1 
                                                           | otherwise -> Nothing 
                                        _ -> Nothing  
                        _ -> Nothing 