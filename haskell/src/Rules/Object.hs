module Rules.Object where

import Rules.Utility

data Object = Object {objectName :: String, objectDescription :: String} deriving (Eq)

simpleObject name = Object name $ "The " ++ name ++ " is a regular " ++ name ++ ".\nThere is nothing unusual about it!"

instance Named Object where
  name = objectName
