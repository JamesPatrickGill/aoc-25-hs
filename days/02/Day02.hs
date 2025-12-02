{-# LANGUAGE TemplateHaskell #-}

module Day02 (part1, part2, parse, exampleInput, realInput) where

import Data.FileEmbed (embedStringFile)
import Data.List.Split (splitOn)
import Data.Set (Set, fromList, unions)

exampleInput :: String
exampleInput = $(embedStringFile "days/02/example.txt")

realInput :: String
realInput = $(embedStringFile "days/02/input.txt")

parse :: String -> [(Int, Int)]
parse input = map parseRange $ splitOn "," input
  where
    parseRange s = case splitOn "-" s of
      [a, b] -> (read a, read b)
      _ -> error $ "Invalid range: " ++ s

repeatedHalves :: (Int, Int) -> [Int]
repeatedHalves (lo, hi) = concatMap halves [1 .. maxD]
  where
    maxD = length (show hi) `div` 2
    halves d = [n * m | n <- [nMin .. nMax]]
      where
        m = 10 ^ d + 1
        nMin = max ((lo + m - 1) `div` m) (if d == 1 then 1 else 10 ^ (d - 1))
        nMax = min (hi `div` m) (10 ^ d - 1)

part1 :: String -> Int
part1 input = sum (concatMap repeatedHalves (parse input))

repeatedAnythings :: (Int, Int) -> Set Int
repeatedAnythings (lo, hi) = fromList (concatMap reps [(d, k) | d <- [1 .. maxD], k <- [2 .. maxK]])
  where
    maxD = length (show hi) `div` 2
    maxK = length (show hi)
    reps (d, k) = [n * m | n <- [nMin .. nMax]]
      where
        m = (10 ^ (d * k) - 1) `div` (10 ^ d - 1)
        nMin = max ((lo + m - 1) `div` m) (if d == 1 then 1 else 10 ^ (d - 1))
        nMax = min (hi `div` m) (10 ^ d - 1)

part2 :: String -> Int
part2 input = sum (unions (map repeatedAnythings (parse input)))
