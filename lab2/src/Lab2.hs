--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab 2: Types & list comprehensions                                         --
--------------------------------------------------------------------------------

module Lab2 where

--------------------------------------------------------------------------------

-- 1. Using the [n..m] syntax for lists, define a list of the numbers 0 to 10.
zeroToTen :: (Num a, Enum a) => [a]
zeroToTen = [0..10]

-- 2. Using the [n..m] syntax for lists, define a list of the numbers 4 to 8.
fourToEight :: (Num a, Enum a) => [a]
fourToEight = [0..8]

-- 3. Using the [n..m] syntax for lists, define a list of the lower-case
-- characters from 'a' to 'z'.
lowercase :: [Char]
lowercase = ['a'..'z']

-- 4. Using a list comprehension, define a list of the powers of two for
-- the exponents from 1 to 10.
powersOfTwo :: Num a => [a]
powersOfTwo = undefined

-- 5. Using a list comprehension, define a list of the factorials of the
-- numbers 1 to 10.
factorials :: [Int]
factorials = [fac 10]
    where
        fac n = product [1..n]

-- 6. Using a list comprehension, define a list of coordinates where the top
-- left corner is (0,0) and the bottom right is (10,10).
coords :: (Num a, Enum a) => [(a,a)]
coords = undefined

-- 7. Using a list comprehension, define a list of all pairs where both sections
-- are in the range from 0 to 5, such that the sum of both sections never
-- exceeds 5.
noMoreThanFive :: (Num a, Enum a) => [(a,a)]
noMoreThanFive = [(x,y)|x<-[0..5], y<-[0..5-x]]

-- 8. Using a list comprehension with a predicate, define a list of all even
-- numbers from 0 to 100.
evens :: [Int]
evens = [0,2..100]

-- 9. Write a function which, given some natural number n, produces a list of
-- all multiples of 3 and 5 in the range of 0 to n (inclusive). For example,
-- multiples 10 = [0,3,5,6,9,10]
multiples :: Int -> [Int]
multiples n = [n | n <- [0..n],n `mod` 3 == 0 || n `mod ` 5 == 0]

--------------------------------------------------------------------------------
