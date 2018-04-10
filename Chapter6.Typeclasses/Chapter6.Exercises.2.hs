-- Match the types
-- We're going to give you two types and their implementations.
-- Then we're going to ask you if you can substitute the second
-- type for the first. You can test this by typing the frist
-- declaration and it's type into a file and editing in the new
-- one loading to see if it fails.
--
-- 1. For the following definition

-- a)
i :: Num a => a
i = 1

-- b) try replacing the type signature with the following :
-- i :: a
-- this doesn't work because its not in the Num typeclass

--2.
-- a)
f :: Float
f = 1.0
-- works because 1.0 is a float
--b)
-- this does not work becuse 1.0 needs to be a fractional
-- t :: Num a => a
-- t = 1.0
-- this also works becuase 1.0 is part of the Num type class

--4. Hint for the following: type :info RealFrac in your REPL
-- a)
h :: Float
h = 1.0
-- works
-- b)
g :: RealFrac a => a
g = 1.0
-- works

--5.
-- a)
freud :: a -> a
freud x = x
-- b)
freud2 :: Ord a => a -> a
freud2 x = x
-- this works the same its just constraining it to Ord

--6.
-- a)
freud3 :: a -> a
freud3 x = x
-- b)
freud4 :: Int -> Int
freud4 x = x
-- this also works becuase it's just constraining it to an Int

--7
-- a)

myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX

--b)
-- sigmund :: a -> a

-- should not work becuase we are constraining my x
-- to an Int but signmund is any type.


--8
-- a)
myZ = 1 :: Int

sigmund2 :: Int -> Int
sigmund2 x = myZ

-- b)
-- sigmund2 :: Num a => a -> a
-- this does not work even though Int is in the Num
-- typeclass the last parameter could be any type of
-- the Num class and myZ HAS to be ALWAYS be of type Int
-- sigmund2 :: Num a => a -> Int this could work


-- 9
-- a)
jung :: Ord a => [a] -> a
jung xs = head (xs)

-- b)
-- jung :: [Int] -> Int
-- this work becuase Int is part of Ord
