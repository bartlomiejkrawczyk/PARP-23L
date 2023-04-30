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
go direction state =
  let location = retrieveLocation state
      paths' = paths location
   in case direction of
        "n" ->
          case north paths' of
            Path _ -> success [] state {currentLocation = name $ north paths'}
            LockedPath _ item ->
              if not (any (\x -> name x == item) (inventory state))
                then failure ["You have to carry " ++ item ++ " to visit this location!"] state
                else success [] state {currentLocation = name $ north paths'}
            InvalidPath -> failure ["You can't go that way!"] state
        "s" ->
          case south paths' of
            Path _ -> success [] state {currentLocation = name $ south paths'}
            LockedPath _ item ->
              if not (any (\x -> name x == item) (inventory state))
                then failure ["You have to carry " ++ item ++ " to visit this location!"] state
                else success [] state {currentLocation = name $ south paths'}
            InvalidPath -> failure ["You can't go that way!"] state
        "e" ->
          case east paths' of
            Path _ -> success [] state {currentLocation = name $ east paths'}
            LockedPath _ item ->
              if not (any (\x -> name x == item) (inventory state))
                then failure ["You have to carry " ++ item ++ " to visit this location!"] state
                else success [] state {currentLocation = name $ east paths'}
            InvalidPath -> failure ["You can't go that way!"] state
        "w" ->
          case west paths' of
            Path _ -> success [] state {currentLocation = name $ west paths'}
            LockedPath _ item ->
              if not (any (\x -> name x == item) (inventory state))
                then failure ["You have to carry " ++ item ++ " to visit this location!"] state
                else success [] state {currentLocation = name $ west paths'}
            InvalidPath -> failure ["You can't go that way!"] state
        _ -> failure [] state
