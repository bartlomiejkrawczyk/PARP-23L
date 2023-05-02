module Rules.Look where

import Rules.Checking
import Rules.Fact
import Rules.Location
import Rules.Movement
import Rules.State
import Rules.Utility

lookName :: State -> Result
lookName state =
  let location = retrieveLocation state
   in success [locationName location] state

lookDescription :: State -> Result
lookDescription state =
  let location = retrieveLocation state
   in success (locationDescription location) state

lookPeople :: State -> Result
lookPeople state =
  let location = retrieveLocation state
      people' = people location
   in success (map name people') state

lookItems :: State -> Result
lookItems state =
  let location = retrieveLocation state
      items' = items location
   in success (map name items') state

lookAround :: State -> Result
lookAround state =
  let location = retrieveLocation state
      paths' = paths location
      stateWithSeenNorth = addFact state (Fact $ "seen_" ++ name (north paths'))
      stateWithSeenSouth = addFact stateWithSeenNorth (Fact $ "seen_" ++ name (south paths'))
      stateWithSeenEast = addFact stateWithSeenSouth (Fact $ "seen_" ++ name (east paths'))
      stateWithSeenWest = addFact stateWithSeenEast (Fact $ "seen_" ++ name (west paths'))
   in success
        [ "n: " ++ lookAtPath (north paths'),
          "s: " ++ lookAtPath (south paths'),
          "e: " ++ lookAtPath (east paths'),
          "w: " ++ lookAtPath (west paths')
        ]
        stateWithSeenWest

lookAtPath :: Path -> String
lookAtPath path =
  name path
    ++ ( case path of
           LockedPath a item -> " - you need " ++ item
           _ -> ""
       )