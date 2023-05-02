module Rules.Checking where

import Rules.Fact
import Rules.Item
import Rules.Person
import Rules.State

checkCondition :: State -> Condition -> Bool
checkCondition state condition =
  case condition of
    FactCondition _ -> fact condition `elem` facts state
    NoFactCondition _ -> fact condition `notElem` facts state
    _ -> requiredItemName condition `elem` map itemName (inventory state)

addFact :: State -> Fact -> State
addFact state fact =
  let oldFacts = facts state
   in if fact `elem` oldFacts
        then state
        else state {facts = fact : oldFacts}
