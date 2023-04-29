module Rules.Movement where

import Rules.Location
import Rules.State
import Rules.Utility

retrieveLocation :: State -> Location
retrieveLocation state =
  let locationName = currentLocation state
      location = head $ filter (\x -> name x == locationName) (locations state)
   in location
