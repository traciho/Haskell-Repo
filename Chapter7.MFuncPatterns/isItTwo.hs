
isItTo :: Integer -> Bool
isItTo 2 = True
isItTo _ = False

-- the order of pattern matches matters the following
-- version of the function will always return False because
-- it will match the "anything else" case first - match it to
-- everything - so nothing will get through that to match with the
-- pattern you do want to match:

isItTwo :: Integer -> Bool
isItTwo _ = False
itItTwo 2 = True

-- what happens if we forget to match a case in our pattern?

isItToo :: Integer -> Bool
isItToo 2 = True

-- notice that now our function can only pattern match
-- on the value 2. This is an incomplete pattern match because
-- it can't match any other data.
