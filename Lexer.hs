module Lexer where 

import Data.Char 

data Token = TokenNum Int 
           | TokenTrue 
           | TokenFalse
           | TokenPlus 
           | TokenSub
           | TokenTimes 
           | TokenAnd 
           | TokenOr 
           | TokenEq
           | TokenNot
           | TokenLess
           | TokenGreater
           | TokenLParen 
           | TokenRParen 
           | TokenLam
           | TokenArrow
           | TokenColon
           | TokenComma
           | TokenFst
           | TokenSnd
           | TokenVar String
           | TokenIntType
           | TokenBoolType
           | TokenIf
           | TokenThen
           | TokenElse
           deriving (Show, Eq)

data Expr = Num Int 
          | BTrue 
          | BFalse 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mult Expr Expr 
          | And Expr Expr 
          | Or Expr Expr 
          | Eq Expr Expr
          | Less Expr Expr
          | Greater Expr Expr
          | Not Expr
          | Paren Expr 
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr
          | App Expr Expr
          | Pair Expr Expr
          | Fst Expr
          | Snd Expr
          deriving (Show, Eq)

data Ty = TNum 
        | TBool 
        | TPair Ty Ty
        | TArrow Ty Ty
        deriving (Show, Eq) 

lexer :: String -> [Token]
lexer [] = []
lexer ('+':cs) = TokenPlus : lexer cs 
lexer ('-':'>':cs) = TokenArrow : lexer cs
lexer ('-':cs) = TokenSub : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs 
lexer ('(':cs) = TokenLParen : lexer cs 
lexer (')':cs) = TokenRParen : lexer cs
lexer ('\\':cs) = TokenLam : lexer cs
lexer (':':cs) = TokenColon : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer ('=':'=':cs) = TokenEq : lexer cs
lexer ('<':cs) = TokenLess : lexer cs
lexer ('>':cs) = TokenGreater : lexer cs
lexer ('!':cs) = TokenNot : lexer cs
lexer ('&':'&':cs) = TokenAnd : lexer cs 
lexer ('|':'|':cs) = TokenOr : lexer cs  
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isAlpha c = lexKw (c:cs)
lexer _ = error "Lexical error"

lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest 

lexKw cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest 
             ("fst", rest) -> TokenFst : lexer rest
             ("snd", rest) -> TokenSnd : lexer rest
             ("Int", rest) -> TokenIntType : lexer rest
             ("Bool", rest) -> TokenBoolType : lexer rest
             ("if", rest) -> TokenIf : lexer rest
             ("then", rest) -> TokenThen : lexer rest
             ("else", rest) -> TokenElse : lexer rest
             (var, rest) -> TokenVar var : lexer rest