-- if x + 1 == 1 then "Awesome" else "wut"

-- we can rewrite this as a case expression, matching on the constructors
-- of Bool :

funcZ x =
  case x + 1 == 1 of
    True -> "Awesome"
    False -> "wut"
-- Note that wile the syntax is considerably differnt here, the results
-- will be the same. Load it in REPL and try it out.


-- We could also write a case expression to tell us whether
-- or not something is a palindrome

pal xs =
  case xs == reverse xs of
    True -> "yes"
    False -> "no"
-- the above can also be written with a where clause
-- in cases where you might need to reuse the y:

pal2 xs =
  case y of
    True -> "yes"
    False -> "no"
  where y = xs == reverse xs
-- in either case the function will first check if the input
-- string is equal to the reverse of it
