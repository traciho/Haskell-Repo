module Main where


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
        (case x of
            Nothing -> main
            Just -> (a, b))
      putStrLn "Your sum is"
      print (a + b)
      -- rewrite the code to go from x to (a,b)
      -- x :: Maybe (Int, Int)
      -- (a, b) :: (Int, Int)
      -- and repeat main if you can't

-- putStrLn :: String -> IO () -- IO instruction / action / recipe
-- getLine :: IO String -- an instruction that results in a string -- a recipe for a string
getTwoNumbers :: IO (Maybe (Int, Int))
getTwoNumbers = do
    line <- getLine
    pure $ readInts line

readInts :: String -> Maybe (Int, Int)
readInts line = (a, b)






 -- replace it with something that works
--number space number return just number 1 number 2 anything else is nothing
-- reading about strings and maybe

--
data Maybe x = Nothing | Just x
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
