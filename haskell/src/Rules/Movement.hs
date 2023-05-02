module Rules.Movement where

import Rules.Location
import Rules.State
import Rules.Utility

retrieveLocation :: State -> Location
retrieveLocation state =
  let locationName = currentLocation state
      location = head $ filter (\x -> name x == locationName) $ locations state
   in location

go :: String -> State -> Result
go direction state =
  let location = retrieveLocation state
      paths' = paths location
   in case direction of
        "n" ->
          goTo (north paths') state
        "s" ->
          goTo (south paths') state
        "e" ->
          goTo (east paths') state
        "w" ->
          goTo (west paths') state
        _ -> failure [] state

goTo :: Path -> State -> Result
goTo path state = case path of
  Path _ -> success [] state {currentLocation = name path}
  LockedPath _ item ->
    if not (any (\x -> name x == item) (inventory state))
      then failure ["You have to carry " ++ item ++ " to visit this location!"] state
      else success [] state {currentLocation = name path}
  InvalidPath -> failure ["You can't go that way!"] state