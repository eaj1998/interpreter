module Main where

import Lexer
import Parser
import TypeChecker
import Interpreter

runTest :: String -> IO ()
runTest s = do
    putStrLn $ "Expression: " ++ s
    let tokens = lexer s
    putStrLn $ "Tokens: " ++ show tokens
    let ast = parser tokens
    putStrLn $ "AST: " ++ show ast
    case typeof [] ast of
        Just t -> do
            putStrLn $ "Type: " ++ show t
            let result = eval ast
            putStrLn $ "Result: " ++ show result
        Nothing -> putStrLn "Type Error"
    putStrLn "---------------------------------------------------"

main :: IO ()
main = do
    putStrLn "=== Interpretador de Linguagem Funcional ==="
    putStrLn ""
    runTest "1 + 2"
    runTest "3 * 4"
    runTest "10 - 5"
    runTest "(1, 2)"
    runTest "fst (1, 2)"
    runTest "snd (1, 2)"
    runTest "(\\x :: Int -> x + 1) 5"
    runTest "true && false"
    runTest "true || false"
    runTest "!true"
    runTest "5 == 5"
    runTest "3 > 2"