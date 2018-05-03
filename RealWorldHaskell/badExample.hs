badExample (x:xs) = x + badExample xs



-- if we need to provide a behavior in cases where we don't
-- care about specific constructors we can use a wild card pattern

goodExample (x:xs) = x + goodExample xs
goodExample _      = 0
