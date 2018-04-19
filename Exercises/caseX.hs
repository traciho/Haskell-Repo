--
data Maybe x = Nothing | Just x
--
-- main :: IO ()
-- main = do -- do this IO instruction -- in order
--       putStrLn "Please enter 2 numbers seperated by a space"
--       x <- getTwoNumbers
--         return (case x of
--                   Nothing -> main
--                   Just -> (a, b))
--       putStrLn "Your sum is"
--       print (a + b)
--
-- getTwoNumbers :: IO (Maybe (Int, Int))
-- getTwoNumbers = do
--     line <- getLine
--     pure $ readInts line
--
-- readInts :: String -> Maybe (Int, Int)
-- readInts a b = Just (a,b)
--     where ( , ) = error "error"

numbers x y
  | x == Int = True
  | y == _ = False
