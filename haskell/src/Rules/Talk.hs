module Rules.Talk where

import Data.Maybe (fromJust, isNothing)
import Rules.Checking
import Rules.Colors
import Rules.Fact
import Rules.Location
import Rules.Look
import Rules.Person
import Rules.State
import Rules.Utility

talk :: String -> State -> Result
talk person state =
  let (location, people', allSubjects) = personInfo state person
   in if null people'
        then failure ["There is no one named " ++ applyColor colorRed person ++ " nearby!"] state
        else success (("You can ask " ++ applyColor colorBlue person ++ " about:") : map name (filter (isSubjectActive state) allSubjects)) state

ask :: String -> String -> State -> Result
ask person subject state =
  let (location, people', allSubjects) = personInfo state person
      subjects' = filter (\x -> subjectName x == subject) $ filter (isSubjectActive state) allSubjects
   in if null people'
        then failure ["There is no one named " ++ applyColor colorRed person ++ " nearby!"] state
        else
          if null subjects'
            then failure [person ++ " does not know anything about " ++ subject] state
            else askSuccess state $ head subjects'

askSuccess :: State -> Subject -> Result
askSuccess state subject =
  let askResultWithoutState = success [response subject]
   in if isNothing (result subject)
        then askResultWithoutState state
        else
          let stateWithNewFact = addFact state $ resultFact $ fromJust (result subject)
           in askResultWithoutState stateWithNewFact

personInfo :: State -> String -> (Location, [Person], [Subject])
personInfo state person =
  let location = retrieveLocation state
      people' = filter (\x -> name x == person) $ listActivePeople state location
      allSubjects = subjects $ head people'
   in (location, people', allSubjects)

isSubjectActive :: State -> Subject -> Bool
isSubjectActive state subject =
  case subject of
    Subject {} -> True
    ConditionalSubject condition _ _ _ -> checkCondition state condition