-- Recursion
-- 1. Write out the steps for the reducing devidedBy 15 2 to its final answer
-- according to Haskell code.

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n    d count
          | n < d = (count, n)
          | otherwise = go (n - d) d (count + 1)

-- divdedBy 15 2 =
--   go 15 2 0
--
--   |15 < 2 = False -- SKIP
--
--   |otherwise = go (15 - 2) 2 (0+ 1)
--
-- go 13 2 2
-- otherwise branch
-- go (13 - 2) 2 ( 1 + 1)
-- n == 11, d == 2, count == 2
--
-- go 11 2 3
-- otherwise branch
-- go (11 - 2) 2 (2+ 1)
-- n == 9, d == 2, count == 3
--
-- go 9 2 4
-- otherwise branch
-- go (9 - 2) 2 (3 + 1)
-- n == 7, d == 2, count == 4
--
-- go 7 2 5
-- otherwise branch
-- go (7 - 2 ) 2 (4 + 1)
-- n == 5, d == 2, count == 5
--
-- go 5 2 6
-- otherwise branch
-- go (5 - 2) 2 (5 + 1)
-- n == 3, d == 2, count == 6
--
-- go 3 2 1
-- otherwise branch
-- go (3 - 2) 2 (6 + 1)
-- n == 1 , d == 2, count == 7
--
-- go 1 2 7
-- 1 < 2 is True
-- n == 0, d == 2 count == 7
--
-- 15 / 2 = (7 remainder of 1)

--
-- 2. Write a function that recursively sums all numbers from 1
-- to n, n being the argument. So that if n was 5, you'd add
-- 1 + 2 + 3 + 4 + 5 to get 15. The type should be
-- (Eq a, Num a) => a -> a

sumAll :: (Eq a, Num a) => a -> a
sumAll x = go x 0
  where go n sum
          | n == 0    = sum
          | otherwise = go (n - 1) (n + sum)

-- 3. Write a function that multiplies two integral numbers using a
-- recursive summation. The type should be (Integral a) => a -> a -> a

mult2 :: (Integral a) => a -> a -> a
mult2  n 0 = 0
mult2 n m = n + mult2 n (m - 1)


data DividedByResult =
    Result Integer
  | DividedByZero deriving Show

dividedBy :: Integer -> Integer -> (DividedByResult, Integer)
dividedBy num denom = go num denom 0
  where go n   d count
          | d == 0    = (DividedByZero, 0)
          | n < 0     = go (negate n) d count
          | d < 0     = go n (negate d) count
          | n < d     = (Result (count
                          * (if num < 0 then (-1) else 1)
                          * (if denom < 0 then (-1) else 1)
                        ), n)
          | otherwise = go (n - d) d (count + 1)

mc :: Integral a => a -> a
mc x
  | x > 100 = x - 10
  | otherwise = mc(mc(x + 11))
