module Main where

import Control.DeepSeq (force)
import Control.Exception (evaluate)
import Criterion.Main
import Day04

main :: IO ()
main = do
  _ <- evaluate (force realInput)
  defaultMain
    [ bgroup
        "day04"
        [ bench "part1" $ whnf part1 realInput,
          bench "part2" $ whnf part2 realInput
        ]
    ]
