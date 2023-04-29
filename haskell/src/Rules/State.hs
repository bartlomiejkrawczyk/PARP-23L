module Rules.State where

import Rules.Inventory
import Rules.Location
import Story.House

data State = State
  { finish :: Bool,
    inventory :: [Item],
    currentLocation :: String,
    map :: [Location]
  }

initialState =
  State
    False
    []
    "Detective's house"
    []
