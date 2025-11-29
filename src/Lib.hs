module Lib
  ( selectInput,
    InputType (..),
  )
where

import System.Environment (getArgs)

data InputType = Example | Real
  deriving (Show, Eq)

selectInput :: String -> String -> IO (InputType, String)
selectInput example real = do
  args <- getArgs
  return $ case args of
    ("example" : _) -> (Example, example)
    _ -> (Real, real)
