module Rules.Movement where

import Rules.Location
import Rules.Look
import Rules.State
import Rules.Utility

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
goTo path state =
  let activePath = getActivePath state path
   in case activePath of
        Path _ -> success [] state {currentLocation = name activePath}
        LockedPath _ item ->
          if not (any (\x -> name x == item) (inventory state))
            then failure ["You have to carry " ++ item ++ " to visit this location!"] state
            else success [] state {currentLocation = name activePath}
        InvalidPath -> failure ["You can't go that way!"] state