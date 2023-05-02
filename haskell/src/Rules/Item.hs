module Rules.Item where

import Rules.Fact
import Rules.Utility

data Item = Item
  { itemName :: String,
    itemDescription :: [String],
    fingerprints :: Maybe String,
    condition :: Maybe Condition
  }
  deriving (Eq)

simpleItem name =
  Item
    name
    [ "The " ++ name ++ " is a regular " ++ name ++ ".",
      "There is nothing unusual about it!"
    ]
    Nothing
    Nothing

instance Named Item where
  name = itemName
