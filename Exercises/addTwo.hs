module Main where

import Text.Read (readMaybe)
import Data.Maybe (mapMaybe)
import Data.List (unzip)
import Prelude hiding (Maybe (..))


data Maybe a = Nothing
             | Just a deriving (Show)

sayHello :: IO ()
sayHello = do
    putStrLn "hello"
    putStrLn "world"

main :: IO ()
main = do -- do this IO instruction -- in order
      putStrLn "Please enter 2 numbers seperated by a space"
      x <- getTwoNumbers
      case x of
        Nothing -> main
        Just (a,b) -> print (a + b)

-- putStrLn :: String -> IO () -- IO instruction / action / recipe
-- getLine :: IO String -- an instruction that results in a string -- a recipe for a string

getTwoNumbers :: IO (Maybe (Int, Int))
getTwoNumbers = do
    line <- getLine
    pure $ readInts line
  where
    readInts :: String -> Maybe (Int, Int)
    readInts list =
        takeTwo (splitInt list)

    splitInt :: String -> [Int]
    splitInt list =
        mapMaybe readMaybe (words list)

    takeTwo :: [a] -> Maybe (a, a)
    takeTwo list =
        case list of
          [x, y] -> Just (x, y)
          _ -> Nothing



-- case words list of
-- [x, y] ->  catMaybes $ fmap readMaybe x y
-- _ -> Nothing
--


-- case expression of pattern -> result
--                    pattern -> result

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
-- readInts [  = do the result
-- readInts _ = Nothing
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
