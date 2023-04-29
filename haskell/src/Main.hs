module Main where

import Rules.Colors
import Rules.Help
import Rules.Inventory
import Rules.Look
import Rules.Movement
import Rules.State
import Rules.Talk
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

applyCommand :: (State -> Result) -> State -> IO State
applyCommand command state =
  let result = command state
      messages' = messages result
      newState' = newState result
   in do
        printLines messages'
        putStrLn ""
        return newState'

listPeople :: State -> IO State
listPeople state = do
  putStrLn $ applyColor colorBlue "People:"
  applyCommand lookPeople state

listDirections :: State -> IO State
listDirections state = do
  putStrLn $ applyColor colorBlue "Directions:"
  applyCommand lookAround state

look' :: State -> IO State
look' state = do
  putStrLn $ applyColor colorBlue "Place:"
  state <- applyCommand lookName state
  state <- applyCommand lookDescription state
  state <- listPeople state
  putStrLn $ applyColor colorBlue "Items:"
  state <- applyCommand lookItems state
  listDirections state

gameIteration :: State -> IO ()
gameIteration state = do
  cmd <- readCommand
  case cmd of
    (direction : _) | direction `elem` ["n", "s", "e", "w"] -> do
      state <- applyCommand (go direction) state
      state <- look' state
      gameLoop state
    ["take", object] -> do
      newState' <- applyCommand (takeObject object) state
      gameLoop newState'
    ["drop", object] -> do
      newState' <- applyCommand (dropObject object) state
      gameLoop newState'
    ["inspect", object] -> do
      newState' <- applyCommand (inspectObject object) state
      gameLoop newState'
    ["scan", object] -> do
      newState' <- applyCommand (scanObject object) state
      gameLoop newState'
    ["use", item, tool] -> do
      putStrLn item
      putStrLn tool
      -- TODO
      gameLoop state
    ("inventory" : _) -> do
      newState' <- applyCommand listInventory state
      gameLoop newState'
    ("people" : _) -> do
      newState' <- listPeople state
      gameLoop newState'
    ["talk", person] -> do
      state <- applyCommand (talk person) state
      gameLoop state
    ["ask", person, subject] -> do
      state <- applyCommand (ask person subject) state
      gameLoop state
    ["look", "around"] -> do
      newState' <- listDirections state
      gameLoop newState'
    ("look" : _) -> do
      state <- look' state
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
  look' initialState
  gameLoop initialState
