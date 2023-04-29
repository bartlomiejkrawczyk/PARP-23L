module Rules.Talk where

import Rules.Location
import Rules.Movement
import Rules.Person
import Rules.State
import Rules.Utility

talk :: String -> State -> Result
talk person state =
  let location = retrieveLocation state
      person' = filter (\x -> name x == person) $ people location
   in if null person'
        then failure ["There is no one named " ++ person ++ " nearby!"] state
        else success (("You can ask " ++ person ++ " about:") : map name (subject $ head person')) state
