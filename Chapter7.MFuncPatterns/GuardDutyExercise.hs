-- 1. it is probably clear to you why you wouldn't put an otherwise in your
-- top-most guard, but try it with avgGrade anyway and see what happens.
-- it'll be more clear if you rewrite it as an otherwise match:
-- |otherwise = 'F' what happen snow if you pass a 90 as an argument
--
-- --> if you put the otherwise first it will always be F because
--   the function is ran in order.


avgGrade :: (Fractional a, Ord a)
         => a -> Char
avgGrade x
  | y >= 0.7  = 'C'
  | y >= 0.9  = 'A'
  | y >= 0.8  = 'B'
  | y >= 0.59 = 'D'
  | y <  0.59 = 'F'
  where y = x / 100

-- 2. What happens if you take avgGrade as it is written and reorder
--   the guards? does it still typecheck and work the same?
--   Try moving | y >= 0.7 = 'C' and pasing it the argument 90, which
--   should be an 'A' Does it return A?
-- --> No because like 1 it goes in order.

--
--
-- 3. the following function returns

pal xs
  | xs == reverse xs = True
  | otherwise       = False
--
-- b) True when xs is a palindrome
--

-- 4. what type of arguments can pal take?
-- types that can be compared
--
-- 5. what is the type of function pal?
-- Bool
--
-- 6. the following function returns

numbers x
  | x < 0  = -1
  | x == 0 = 0
  | x > 0  = 1

-- c) an indicaton of whether its argument is a positive or
-- negative number or zero

-- 7. what types of arguments can numbers take?
-- Num or Ord types
--
-- 8. what is the type of the function numbers?
-- Num 
