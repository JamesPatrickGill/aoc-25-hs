module Main where

import Criterion.Main
import Control.DeepSeq (force)
import Control.Exception (evaluate)
import Day06

main :: IO ()
main = do
  _ <- evaluate (force realInput)
  defaultMain
    [ bgroup "day06"
        [ bench "part1" $ whnf part1 realInput
        , bench "part2" $ whnf part2 realInput
        ]
    ]
