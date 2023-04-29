module Rules.Location where

import Rules.Item
import Rules.Person
import Rules.Utility

data Direction = North | South | East | West deriving (Eq, Ord)

data Paths = Paths
  { north :: String,
    south :: String,
    east :: String,
    west :: String
  }
  deriving (Eq)

data Location = Location
  { locationName :: String,
    locationDescription :: [String],
    people :: [Person],
    items :: [Item],
    paths :: Paths
  }
  deriving (Eq)

instance Named Location where
  name = locationName
