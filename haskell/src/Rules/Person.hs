module Rules.Person where

import Rules.Utility

data Subject = Subject {subjectName :: String, response :: String} deriving (Eq)

instance Named Subject where
  name = subjectName

data Person = Person {personName :: String, subjects :: [Subject]} deriving (Eq)

instance Named Person where
  name = personName
