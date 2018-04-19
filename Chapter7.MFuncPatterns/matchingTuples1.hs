module TupleFunctions where

-- These have to be the same type because
-- (+) is a -> a -> a
addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x, y) =  x + y

--addEmUp2 could also be written like so
addEmUp2Alt :: Num a => (a, a) -> a
addEmUp2Alt tup = (fst tup) + (snd tup)
-- take the first value of the tuple add it with the last
--value of the tuple

fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x
-- take the first value in the tuple a <- x
-- doesn't matter what the last two values are

third3 :: (a, b, c) -> c
third3 (_, _, x) = x
-- take the last value of the tuple c <- x
-- doesn't matter what the first two value is

middle :: (a, a, a) -> a -- all of this have to be of same type
middle (_, x, _ ) = x
-- we only want the middle value

-- Now we're going to use the GHCi's :browse to see a list
-- of the type signatures and functions we loaded from
-- the module TupleFunctions:
