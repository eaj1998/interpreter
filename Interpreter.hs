module Interpreter where 

import Lexer 
import Parser 

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n1) e2) = let e2' = step e2
                           in Add (Num n1) e2' 
step (Add e1 e2) = Add (step e1) e2 
-- Implementar step para Times
step (And BFalse e2) = BFalse 
step (And BTrue e2) = e2 
step (And e1 e2) = And (step e1) e2 
-- Implementar step para Or
-- Implementar step para If