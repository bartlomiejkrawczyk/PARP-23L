module Rules.State where

import Rules.Object

data State = State
  { finish :: Bool,
    inventory :: [Object]
  }

initialState = State False []
