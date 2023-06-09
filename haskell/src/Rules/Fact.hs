module Rules.Fact where

import Rules.Utility

newtype Fact = Fact {eventName :: String} deriving (Eq)

data Condition
  = FactCondition {fact :: Fact}
  | NoFactCondition {fact :: Fact}
  | MultiCondition {conditions :: [Condition]}
  | HoldingCondition {requiredItemName :: String}
  deriving (Eq)

instance Named Fact where
  name = eventName
