module Rules.Person where

import Rules.Fact
import Rules.Utility

newtype ConversationResult = ConversationResult {resultFact :: Fact} deriving (Eq)

data Subject
  = Subject {subjectName :: String, response :: String, result :: Maybe ConversationResult}
  | ConditionalSubject {condition :: Condition, subjectName :: String, response :: String, result :: Maybe ConversationResult}
  deriving (Eq)

instance Named Subject where
  name = subjectName

data Person
  = Person {personName :: String, subjects :: [Subject]}
  | ConditionPerson {personName :: String, subjects :: [Subject], atCondition :: Condition}
  deriving (Eq)

instance Named Person where
  name = personName
