module Main where

import Lib
import Day03

main :: IO ()
main = do
  (inputType, input) <- selectInput exampleInput realInput
  putStrLn $ "Day 3 - " ++ show inputType
  putStrLn $ "Part 1: " ++ show (part1 input)
  putStrLn $ "Part 2: " ++ show (part2 input)
