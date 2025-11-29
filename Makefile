.PHONY: build bench \
        01 01e 01b 02 02e 02b 03 03e 03b 04 04e 04b \
        05 05e 05b 06 06e 06b 07 07e 07b 08 08e 08b \
        09 09e 09b 10 10e 10b 11 11e 11b 12 12e 12b

build:
	stack build

bench:
	stack bench

# Day 01
01:
	stack run day01 -- real
01e:
	stack run day01 -- example
01b:
	stack bench aoc2025:bench01

# Day 02
02:
	stack run day02 -- real
02e:
	stack run day02 -- example
02b:
	stack bench aoc2025:bench02

# Day 03
03:
	stack run day03 -- real
03e:
	stack run day03 -- example
03b:
	stack bench aoc2025:bench03

# Day 04
04:
	stack run day04 -- real
04e:
	stack run day04 -- example
04b:
	stack bench aoc2025:bench04

# Day 05
05:
	stack run day05 -- real
05e:
	stack run day05 -- example
05b:
	stack bench aoc2025:bench05

# Day 06
06:
	stack run day06 -- real
06e:
	stack run day06 -- example
06b:
	stack bench aoc2025:bench06

# Day 07
07:
	stack run day07 -- real
07e:
	stack run day07 -- example
07b:
	stack bench aoc2025:bench07

# Day 08
08:
	stack run day08 -- real
08e:
	stack run day08 -- example
08b:
	stack bench aoc2025:bench08

# Day 09
09:
	stack run day09 -- real
09e:
	stack run day09 -- example
09b:
	stack bench aoc2025:bench09

# Day 10
10:
	stack run day10 -- real
10e:
	stack run day10 -- example
10b:
	stack bench aoc2025:bench10

# Day 11
11:
	stack run day11 -- real
11e:
	stack run day11 -- example
11b:
	stack bench aoc2025:bench11

# Day 12
12:
	stack run day12 -- real
12e:
	stack run day12 -- example
12b:
	stack bench aoc2025:bench12
