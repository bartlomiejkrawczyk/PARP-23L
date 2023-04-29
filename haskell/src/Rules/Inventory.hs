module Rules.Inventory where

import Rules.Colors
import Rules.Item
import Rules.Location
import Rules.Movement
import Rules.State
import Rules.Utility

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
              success
                ["Ok."]
                state
                  { locations = (location {items = filter (\x -> name x /= object) $ items location}) : filter (/= location) (locations state),
                    inventory = head items' : inventory state
                  }

dropObject :: String -> State -> Result
dropObject object state =
  let location = retrieveLocation state
      items' = filter (\x -> name x == object) $ inventory state
   in if null items'
        then failure ["You aren't holding it!"] state
        else
          success
            ["Ok."]
            state
              { locations = (location {items = head items' : items location}) : filter (/= location) (locations state),
                inventory = filter (\x -> name x /= object) $ inventory state
              }

inspectObject :: String -> State -> Result
inspectObject object state =
  let location = retrieveLocation state
      items' = filter (\x -> name x == object) $ inventory state
   in if null items'
        then failure ["You aren't holding it!"] state
        else
          success
            (concatMap itemDescription items')
            state

scanObject :: String -> State -> Result
scanObject object state =
  let location = retrieveLocation state
      items' = filter (\x -> name x == object) $ inventory state
   in if null items'
        then failure ["You aren't holding it!"] state
        else
          if name location /= "Fingerprints detector"
            then failure ["You need a Fingerprints detector to scan for fingerprints!"] state
            else
              if fingerprints (head items') == ""
                then success ["The only fingerprints you find on " ++ object ++ " are your fingerprints!"] state
                else
                  success
                    ["Detector found " ++ fingerprints (head items') ++ "'s fingerprings on " ++ name (head items') ++ "!"]
                    state

listInventory :: State -> Result
listInventory state =
  let location = retrieveLocation state
   in success (applyColor colorBlue ("Inventory " ++ show (length $ inventory state) ++ "/5:") : map name (inventory state)) state

data Recipe = Recipe {recipeItem :: String, recipeTool :: String, outcome :: Item}

recipes :: [Recipe]
recipes =
  [ Recipe
      "letter"
      "knife"
      ( Item
          "mikes_criminal_record"
          [ "Mike Black, was arrested 2 years ago for stealing",
            "two very expensive new bikes from a bike shop.",
            "He was fined $5,000 and sentenced to three months of community service."
          ]
          ""
      ),
    Recipe
      "wobbly_shovel"
      "screwdriver"
      ( Item
          "shovel"
          [ "Now the shovel is suitable for work, it is certainly much stronger,",
            "maybe now it will be possible to dig something with it"
          ]
          ""
      )
  ]

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
              success
                ["You made " ++ name (outcome (head recipes')) ++ " from " ++ item ++ " using " ++ tool ++ "!"]
                state
                  { inventory =
                      outcome (head recipes') : filter (\x -> name x /= item) (inventory state)
                  }
