module Main where

import Rules.Colors
import Rules.Help
import Rules.State
import System.IO

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
    [direction] | direction `elem` ["n", "s", "e", "w"] -> do
      printLines ["dupa"]
      gameLoop state
    ["instructions"] -> do
      printLines instructionsText
      gameLoop state
    ["quit"] -> do
      gameLoop $ State True
    _ -> do
      printLines
        [ applyColor colorRed "Unknown command.",
          ""
        ]
      gameLoop state

gameLoop :: State -> IO ()
gameLoop state =
  if finish state
    then printLines wonText
    else gameIteration state

main :: IO ()
main = do
  printLines introductionText
  printLines instructionsText
  gameLoop initialState
