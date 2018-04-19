-- Exercises Case Practice

--First, rewrtie if-then-else expressions into case expressions
--
-- 1. the following should return x when x is greater than y
--
-- functionC x y = if (x > y) then x else y

func x y =
  case more of
    True -> x
    False -> y
  where more = x > y

-- 2. The following will add 2 to even numbers and otherwise
-- simply return the input value.
--
-- ifEvenAdd2 n = if even n then (n+2) else n

ifEve n =
  case y of
    True -> (n + 2)
    False -> n
  where y = even n


-- the next exercise doesn't have all the cases covered.
-- see if you can fix it.
--
-- 3. The following compares a value to, x, to zero and returns
-- an indicator for whether x is a positive number or negative
-- number. But what if x is 0? You may need to play with the
-- compare function a bit to find what to do

num x =
  case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0 
