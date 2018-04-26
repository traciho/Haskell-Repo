lucky :: (Integral a) => a -> String
lucky 7 = "lucky number Seven!"
lucky x = "Sorry, you're out of luck, pal!"


factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n =n * factorial (n - 1)

-- in a nutshell, if we try to get the factorial of 3 
-- it tries to compute
--
-- 3 * factorial 2
-- the factorial of 2 is
-- 2 * factorial 1
-- factorial 1 is
-- 1 * factorial 0
--
-- so now we have 3 * (2 * (1 * factorial 0))
--
-- we've defined the faotiral of 0 to be just 1 and because it encounters
-- that pattern before the catch-all one it just returns 1.
-- So the fincal result is equivalent to
--
-- 3 * (2 * (1 * 1))
--
-- Had we written the second pattern on top of the first one, it would catch
-- all numbers, including 0 and our calculation would never terminate
