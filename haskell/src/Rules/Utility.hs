module Rules.Utility where

class Named t where
  name :: t -> String
