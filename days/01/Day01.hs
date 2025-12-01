{-# LANGUAGE TemplateHaskell #-}

module Day01 (part1, part2, parse, exampleInput, realInput) where

import Data.FileEmbed (embedStringFile)

exampleInput :: String
exampleInput = $(embedStringFile "days/01/example.txt")

realInput :: String
realInput = $(embedStringFile "days/01/input.txt")

parse :: String -> [(Char, Int)]
parse input = map parseLine (lines input)
  where
    parseLine (dir : rest) = (dir, read rest)
    parseLine [] = error "empty line"

doTurn :: (Int, Int) -> (Char, Int) -> (Int, Int)
doTurn (val, count) (dir, n) = (modVal, newCount)
  where
    noModVal
      | dir == 'L' = val - n
      | otherwise = val + n
    modVal = noModVal `mod` 100
    newCount
      | modVal == 0 = count + 1
      | otherwise = count

part1 :: String -> Int
part1 input = password
  where
    (_, password) = foldl doTurn (50, 0) (parse input)

doTurn2 :: (Int, Int) -> (Char, Int) -> (Int, Int)
doTurn2 (val, count) (dir, n) = (modVal, newCount)
  where
    noModVal
      | dir == 'L' = val - n
      | otherwise = val + n
    modVal = noModVal `mod` 100
    crossedZero
      | dir == 'L' = ((val - 1) `div` 100) - ((noModVal - 1) `div` 100)
      | otherwise = noModVal `div` 100
    newCount = count + crossedZero

part2 :: String -> Int
part2 input = password
  where
    (_, password) = foldl doTurn2 (50, 0) (parse input)
