third (a, b, c) = c

complicated (True, a, x:xs, 5) = (a, xs)


-- ghci> complicated (True, 1, [1,2,3], 5)
-- (1,[2,3])
-- Wherever a literal value is present in a pattern
-- (True and 5 in the tuple pattern above), that value
-- must match exactly for the pattern match to succeed.
-- If every pattern within a series of equations fails 
-- to match, we get a runtime error
