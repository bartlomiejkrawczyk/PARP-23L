module Main where

import Rules.Colors
import Rules.Help
import Rules.Look
import Rules.State
import System.IO

listPeople :: State -> IO State
listPeople state =
  let result = lookPeople state
      messages' = messages result
      newState' = newState result
   in do
        putStrLn $ applyColor colorBlue "People:"
        printLines messages'
        return newState'

printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

readCommand :: IO [String]
readCommand = do
  putStr (colorGreen ++ "> ")
  hFlush stdout
  xs <- getLine
  putStr colorDefault
  return $ words xs

gameIteration :: State -> IO ()
gameIteration state = do
  cmd <- readCommand
  case cmd of
    (direction : _) | direction `elem` ["n", "s", "e", "w"] -> do
      printLines ["dupa"]
      gameLoop state
    ["take", object] -> do
      putStrLn object
      gameLoop state
    ["drop", object] -> do
      putStrLn object
      gameLoop state
    ["inspect", object] -> do
      putStrLn object
      gameLoop state
    ["scan", object] -> do
      putStrLn object
      gameLoop state
    ["use", item, tool] -> do
      putStrLn item
      putStrLn tool
      gameLoop state
    ("inventory" : _) -> do
      putStrLn "Items:"
      gameLoop state
    ("people" : _) -> do
      newState' <- listPeople state
      gameLoop newState'
    ["talk", person] -> do
      putStrLn person
      gameLoop state
    ["ask", person, subject] -> do
      putStrLn person
      putStrLn subject
      gameLoop state
    ("instructions" : _) -> do
      printLines instructionsText
      gameLoop state
    ("quit" : _) -> do
      printLines finishText
      gameLoop state
    ("halt" : _) -> do
      gameLoop state {finish = True}
    (command : _) | command `elem` ["take", "drop", "inspect", "scan"] -> do
      putStrLn $ "Usage: " ++ command ++ " OBJECT"
      gameLoop state
    ("use" : _) -> do
      putStrLn "Usage: use ITEM TOOL"
      gameLoop state
    ("talk" : _) -> do
      putStrLn "Usage: talk PERSON"
      gameLoop state
    ("ask" : _) -> do
      putStrLn "Usage: ask PERSON SUBJECT"
      gameLoop state
    (command : _) -> do
      printLines
        [ applyColor colorRed "Unknown command: " ++ command,
          ""
        ]
      gameLoop state
    _ -> do
      gameLoop state

gameLoop :: State -> IO ()
gameLoop state =
  if finish state
    then return ()
    else gameIteration state

main :: IO ()
main = do
  printLines introductionText
  printLines instructionsText
  gameLoop initialState
