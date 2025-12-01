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
    runTest "1 + 2"
    runTest "(1, 2)"
    runTest "fst (1, 2)"
    runTest "snd (1, 2)"
    runTest "(\\x:Int -> x + 1) 5"
    runTest "(\\p:(Int, Int) -> fst p + snd p) (10, 20)"
    runTest "if true then 1 else 0"
    runTest "fst ((\\x:Int -> (x, x)) 5)"
    runTest "let x = 1 in x + 1" -- Not implemented let, but checking if parser handles var
    -- Wait, I didn't implement 'let'. The user didn't ask for it explicitly but it's common.
    -- I'll skip 'let' for now as it wasn't in requirements.
    runTest "(\\x:Int -> \\y:Int -> x + y) 10 20"