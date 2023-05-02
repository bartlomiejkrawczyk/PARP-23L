module Rules.Inventory where

import Data.Maybe (fromJust, isNothing)
import Rules.Checking
import Rules.Colors
import Rules.Fact
import Rules.Item
import Rules.Location
import Rules.Movement
import Rules.Recipe
import Rules.State
import Rules.Utility

addItemToLocation :: Item -> Location -> State -> [Location]
addItemToLocation item location state = (location {items = item : items location}) : filter (/= location) (locations state)

removeItemFromLocation :: Item -> Location -> State -> [Location]
removeItemFromLocation item location state = (location {items = filter (/= item) $ items location}) : filter (/= location) (locations state)

takeObject :: String -> State -> Result
takeObject object state =
  let location = retrieveLocation state
      items' = filter (\x -> name x == object) $ items location
   in if null items'
        then failure ["I don't see it here."] state
        else
          if length (inventory state) >= 5
            then failure ["Your inventory is full! Drop something before picking " ++ object ++ " up!"] state
            else
              let newState =
                    state
                      { locations = removeItemFromLocation (head items') location state,
                        inventory = head items' : inventory state
                      }
               in success ["Ok."] newState

dropObject :: String -> State -> Result
dropObject object state =
  let location = retrieveLocation state
      items' = filter (\x -> name x == object) $ inventory state
   in if null items'
        then failure ["You aren't holding it!"] state
        else
          let newState =
                state
                  { locations = addItemToLocation (head items') location state,
                    inventory = filter (\x -> name x /= object) $ inventory state
                  }
           in success ["Ok."] newState

inspectObject :: String -> State -> Result
inspectObject object state =
  let location = retrieveLocation state
      items' = filter (\x -> name x == object) $ inventory state
   in if null items'
        then failure ["You aren't holding it!"] state
        else success (itemDescription $ head items') state

scanObject :: String -> State -> Result
scanObject object state =
  let location = retrieveLocation state
      items' = filter (\x -> name x == object) $ inventory state
      item = head items'
   in if null items'
        then failure ["You aren't holding it!"] state
        else
          if name location /= "Fingerprints detector"
            then failure ["You need a Fingerprints detector to scan for fingerprints!"] state
            else
              if isNothing (fingerprints item)
                then success ["The only fingerprints you find on " ++ object ++ " are your fingerprints!"] state
                else
                  let message = ["Detector found " ++ fromJust (fingerprints item) ++ "'s fingerprings on " ++ name item ++ "!"]
                      newState = addFact state (Fact $ name item ++ "_scanned")
                   in success message newState

listInventory :: State -> Result
listInventory state =
  let location = retrieveLocation state
   in success (applyColor colorBlue ("Inventory " ++ show (length $ inventory state) ++ "/5:") : map name (inventory state)) state

useTool :: String -> String -> State -> Result
useTool item tool state =
  let items' = filter (\x -> name x == item) $ inventory state
      tools' = filter (\x -> name x == tool) $ inventory state
      recipes' = filter (\x -> recipeItem x == item && recipeTool x == tool) recipes
   in if null items' || null tools'
        then
          if null items'
            then failure ["You don't have the " ++ item ++ "!"] state
            else failure ["You don't have the " ++ tool ++ "!"] state
        else
          if null recipes'
            then failure ["You can't use a " ++ tool ++ " on an " ++ item ++ "!"] state
            else
              let message = ["You made " ++ name (outcome (head recipes')) ++ " from " ++ item ++ " using " ++ tool ++ "!"]
                  newState = state {inventory = outcome (head recipes') : filter (\x -> name x /= item) (inventory state)}
               in success message newState
