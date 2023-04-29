module Rules.Talk where

import Rules.Colors
import Rules.Location
import Rules.Movement
import Rules.Person
import Rules.State
import Rules.Utility

talk :: String -> State -> Result
talk person state =
  let location = retrieveLocation state
      people' = filter (\x -> name x == person) $ people location
   in if null people'
        then failure ["There is no one named " ++ applyColor colorRed person ++ " nearby!"] state
        else success (("You can ask " ++ applyColor colorBlue person ++ " about:") : map name (subjects $ head people')) state

ask :: String -> String -> State -> Result
ask person subject state =
  let location = retrieveLocation state
      people' = filter (\x -> name x == person) $ people location
      subjects' = filter (\x -> subjectName x == subject) $ concatMap subjects people'
   in if null people'
        then failure ["There is no one named " ++ applyColor colorRed person ++ " nearby!"] state
        else success (map response subjects') state
