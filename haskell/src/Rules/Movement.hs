module Rules.Movement where

import Rules.Location
import Rules.State
import Rules.Utility

retrieveLocation :: State -> Location
retrieveLocation state =
  let locationName = currentLocation state
      location = head $ filter (\x -> name x == locationName) (locations state)
   in location

go :: String -> State -> Result
go direction state
  | direction == "n" = success [] state {currentLocation = north (paths (retrieveLocation state))}
  | direction == "s" = success [] state {currentLocation = south (paths (retrieveLocation state))}
  | direction == "e" = success [] state {currentLocation = east (paths (retrieveLocation state))}
  | direction == "w" = success [] state {currentLocation = west (paths (retrieveLocation state))}
  | otherwise = failure [] state
