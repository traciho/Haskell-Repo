module Main where


data MyMaybe x = MyNothing | MyJust x deriving (Show)

addMe:: (Int, Int)-> Int
addMe (x, y) =
       x + y

sayHello :: IO ()
sayHello = do
    putStrLn "hello"
    putStrLn "world"

main :: IO ()
main = do -- do this IO instruction -- in order
      putStrLn "Please enter 2 numbers seperated by a space"
      x <- getTwoNumbers
        -- case x of
        --   Nothing -> main
        --   Just -> (a, b)
      putStrLn "Your sum is"
      -- print (a + b)
      -- rewrite the code to go from x to (a,b)
      -- x :: Maybe (Int, Int)
      -- (a, b) :: (Int, Int)
      -- and repeat main if you can't

-- putStrLn :: String -> IO () -- IO instruction / action / recipe
-- getLine :: IO String -- an instruction that results in a string -- a recipe for a string
getTwoNumbers :: IO (MyMaybe (Int, Int))
getTwoNumbers = do
    line <- getLine
    pure $ readInts line
-- -- line expects an Int Int
readInts :: String -> MyMaybe (Int, Int)
readInts [x] = (MyJust (x, x))
readInts []  = MyNothing




-- readInts ([x])  = Just (y, y)
-- -- :: (Maybe (Int ,Int))
-- readInts ([x]) = Nothing
-- readInts x
--   | isTwo x = Just $ line x
--   | otherwise = Nothing
--   where isTwo = readInts x
-- readInts (x,_) = Nothing
-- readInts (x,y)= (Just (y,y))
-- readInts [x] = Nothing
-- readInts [x y] = Nothing
-- readInts [a] = maybe x y
-- -- readInts (x:[]) = Nothing
-- readInts [xs] = Nothing






 -- replace it with something that works
--number space number return just number 1 number 2 anything else is nothing
-- reading about strings and maybe


--
-- Maybe Int
-- Maybe String
-- Maybe ()

-- you out with an IO objective
-- kick out to other functions (baby steps)
-- you want the most complex steps to be pure haskell


{-
finish assignment by doing two things
1. replae the undefined with something that works and test it seperately
  stack ghci
  > readInts "3 4" -- should return Just (3, 4)
  > readInts "asdf" -- should return Nothing
  > readInts "3" -- should return Nothing

2.
The program should ask for 2 numbers at once seperated by a space
if it can read them print out the sum
if it cant read them
tell the user
and ask them to try again

start by writing funcitons to accomplish the subtask
-}
