--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab: Functions                                                             --
--------------------------------------------------------------------------------

module Lab where

--------------------------------------------------------------------------------

-- Some of the functions we will be defining as part of this lab are
-- part of Haskell's standard library. The following line tells the compiler
-- not to import them.
import Prelude hiding (not, and, max)

--------------------------------------------------------------------------------

-- 0. Define `age` to be your age.

age :: Integer
age = 28

-- 1. Define `name` to be your name.

name :: String
name = "Michael"

-- 2. Modify the definition of `triple` so that it triples its argument.

triple :: Num a => a -> a
triple = \x -> x * 3

-- 3. Replace `undefined` in the definition of `tripleV2` below so that
-- it behaves like `triple` above, but uses the syntactic sugar for
-- lambda terms instead.

tripleV2 :: Num a => a -> a
tripleV2 x = x * 3

-- 4. Replace `undefined` in the definition of `not` below to implement
-- boolean negation.

not :: Bool -> Bool
not True  = False
not False = True

not' :: Bool -> Bool
not' x = case x of
    True  -> False
    False -> True

not'' :: Bool -> Bool
not'' = \x -> case x of
    True -> False
    _    -> True

not''' :: Bool -> Bool
not''' = \x -> case x of
    True -> False
    y    -> True

-- 5. Replace `undefined` in the definition of `and` below to implement
-- boolean conjunction.

and :: Bool -> Bool -> Bool
and True True = True
and _    _    = False

-- 6. Replace `undefined` in the definition of `max` below so that it reduces
-- to the greater number of `x` and `y`.

max :: Ord a => a -> a -> a
max x y | x > y     = x
        | otherwise = y

max' :: Ord a => a -> a -> a
max' x y = if x > y then x else y

-- 7. Replace `undefined` in the definition of `perimeterRect` so that it
-- calculates the perimeter of a rectangle given its length and width.

perimeterRect :: Num a => a -> a -> a
perimeterRect l w = 2*l + 2*w

--    min (perimeterRect 4 8) (perimeterRect 10 2)
-- => min (4*2 + 8*2) (perimeterRect 10 2)
-- => min (8+16) (perimeterRect 10 2)
-- => min 24 (perimeterRect 10 2)
-- => min 24 (10*2 + 2*2) 
-- => min 24 (20 + 2*2) 
-- => min 24 (20 + 4) 
-- => min 24 24
-- => if 24 > 24 then 24 else 24
-- => if False then 24 else 24
-- => 24

--------------------------------------------------------------------------------
