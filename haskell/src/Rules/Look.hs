module Rules.Look where

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
   in success
        [ "n: "
            ++ name (north paths')
            ++ ( case north paths' of
                   LockedPath a item -> " - you need " ++ item
                   _ -> ""
               ),
          "s: "
            ++ name (south paths')
            ++ ( case south paths' of
                   LockedPath a item -> " - you need " ++ item
                   _ -> ""
               ),
          "e: "
            ++ name (east paths')
            ++ ( case east paths' of
                   LockedPath a item -> " - you need " ++ item
                   _ -> ""
               ),
          "w: "
            ++ name (west paths')
            ++ ( case west paths' of
                   LockedPath a item -> " - you need " ++ item
                   _ -> ""
               )
        ]
        state
