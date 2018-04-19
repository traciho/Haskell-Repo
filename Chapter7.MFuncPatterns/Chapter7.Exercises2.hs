-- Let's write code
--
-- 1. The following function returns the ten digit of an integral argument
--
-- tensDigit :: Integral a => a -> a
-- tensDigit x = d
--   where (xLast, _) = divMod x 10
--         (_, d)     = divMod xLast 10
tensDigit1 :: Integral a => a -> a
tensDigit1 x = d
-- divide by 10
  where xLast = x `div` 10
  -- then get the modulus of 10
        d     = xLast `mod` 10

--
-- a) rewrite it using divmod
tensDigit2 :: Integral a => a -> a
tensDigit2 x = d
  where (xLast, _) = divMod x 10
        (_, d)     = divMod xLast 10
--
-- b) Does the divMod version have the same type as the original version
-- yes they have the same type Integral

-- c) lets change it so that we're getting the hundreds digit instead.
-- You could start it like this (though that may not be the only possibility)

hunsD x = d2
  where d = x `div` 100
        d2 = d `mod` 10


-- 2. Implement the function of the type a -> a -> Bool -> a once each using
-- a case expression and once with a guard

foldBool :: a -> a -> Bool -> a
foldBool =
  error
  "Error: Need to implement foldBool!"

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y z
  | z  = x
  | otherwise = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z =
  case z of
    True -> x
    False -> y


foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ False = x
foldBool3 _ y True = y

--
-- 3. Fill in the definition. Note that the first argument to our function
-- is also a function which can be applied to values. Your second
-- argument is a tuple, which can be used for a pattern matching:

g :: (a -> b) -> (a, c) -> (b, c)
g z (x, y) = (z x, y)
