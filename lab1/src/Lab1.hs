--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab 1: Getting started                                                     --
--------------------------------------------------------------------------------
-- Topics: Definitions, basic arithmetic, strings, booleans, functions,
--         using built-in functions, and basic pattern matching.
--------------------------------------------------------------------------------

module Lab1 where

--------------------------------------------------------------------------------

-- Some of the functions we will be defining as part of this lab are
-- part of Haskell's standard library. The following line tells the compiler
-- not to import them.
import Prelude hiding (not, and, max)

--------------------------------------------------------------------------------

-- 0. Define `age` to be your age.

age = 27

-- 1. Define `name` to be your name.

name = "Michael"

-- 2. Modify the definition of `triple` so that it triples its argument.

triple = \x -> x * 3

-- 3. Replace `undefined` in the definition of `tripleV2` below so that
-- it behaves like `triple` above.

tripleV2 x = 3 * x

-- 4. Replace `undefined` in the definition of `not` below to implement
-- boolean negation.

not :: Bool -> Bool
not True  = False
not False = True

-- 5. Replace `undefined` in the definition of `and` below to implement
-- boolean conjunction.

and :: Bool -> Bool -> Bool
and True True = True
and _    _    = False

-- 6. Replace `undefined` in the definition of `max` below so that it reduces
-- to the greater number of `x` and `y`.

max :: Ord a => a -> a -> a
max x y
  | x > y     = x
  | otherwise = y

-- 7. Replace `undefined` in the definition of `perimeterRect` so that it
-- calculates the perimeter of a rectangle given its length and width.

perimeterRect :: Num a => a -> a -> a
perimeterRect l w = 2*l + 2*w

--------------------------------------------------------------------------------
