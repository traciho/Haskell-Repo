-- -- Exercises Variety Pack
-- 1. Given the following declarations

k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)

  -- a) what is the type of k?
  -- - k has type tuple returning x
  -- b) what is the type of k2? is it the same type as k2 or k3?
  -- - k2 returns "three" as a string, not because k2,k3 are both num
  -- c) of k1, k2, k3, which will return the number 3 as the result?
  -- - k3
-- 2. Fill in the definition of the following function:
f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
-- definition 
f (a, b, c) (d, e, f) = ((a, d), (c,f))
