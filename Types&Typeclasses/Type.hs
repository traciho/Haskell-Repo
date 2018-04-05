
--remove has a type of [char] -> [char],
-- meaning that it maps from a string to a string.
-- that's because it takes one string as a parameter and
-- returns another as a result. The [Char] type is synonymous
-- with String so it's clearer if
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c 'elem' ['A'.."Z"]]


addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
the parameters are seperated with -> and there's no special distinction
between the parameters and the return type. The return type is the last
item in the declaration and the parameters are the first three.
