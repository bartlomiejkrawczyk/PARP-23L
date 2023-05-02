module Rules.Location where

import Rules.Fact
import Rules.Item
import Rules.Person
import Rules.Utility

data Direction = North | South | East | West deriving (Eq, Ord)

data Path = Path String | LockedPath String String | ConditionalPath Path Condition Path | InvalidPath deriving (Eq)

instance Named Path where
  name (Path a) = a
  name (LockedPath a _) = a
  name ConditionalPath {} = ""
  name InvalidPath = ""

data Paths = Paths
  { north :: Path,
    south :: Path,
    east :: Path,
    west :: Path
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
