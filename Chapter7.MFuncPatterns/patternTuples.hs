-- f :: (a, b) -> (c, d) -> ((b, d), (a, c))
-- f x y = ((snd x, snd y)), ((fst x, fst y))

--Cleaner version

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f (a, b) (c, d) = ((b, d), (a, c))
-- *Main> f (1,2) (3,4)
-- ((2,4),(1,3))
