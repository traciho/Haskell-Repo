
module MYNOT where

myNot True = False
myNot False = True

-- It might seem that we have two functions named myNot here, but Haskell lets
-- us define a function as a series of equations: these two clauses are defining
-- the behavior of the same function for different patterns of input. On each line
-- the patterns are the items following the function name, up until the = sign


-- here is a slightly more extended example
sumList (x:xs) = x + sumList xs
sumList [] = 0

-- Let us step through the evaluation of sumList [1,2]. The list notation [1,2]
--  is shorthand for the expression (1:(2:[]))
