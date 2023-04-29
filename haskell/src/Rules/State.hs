module Rules.State where

newtype State = State {finish :: Bool}

initialState = State False