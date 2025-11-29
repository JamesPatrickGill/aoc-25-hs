{-# LANGUAGE TemplateHaskell #-}
module Day05 (part1, part2, parse, exampleInput, realInput) where

import Data.FileEmbed (embedStringFile)

exampleInput :: String
exampleInput = $(embedStringFile "days/05/example.txt")

realInput :: String
realInput = $(embedStringFile "days/05/input.txt")

parse :: String -> String
parse = id  -- TODO: define parsed type

part1 :: String -> Int
part1 _input = 0  -- TODO

part2 :: String -> Int
part2 _input = 0  -- TODO
