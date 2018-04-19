--
-- 4. For this next exercise, you'll experiment with writing pointfree
-- versions of exisitng code. This involves some new information so read
-- the following explanation carefully.

module Arith4 where
--
roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)


main = do
  print (roundTrip 4)
  print (id 4)

-- 5. next, write a pointfree version of roundTrip
-- this refers to the function, not to its application in main)

-- roundTrip a = (read . show) a

-- 6. your task now is to change the type of roundTrip to
-- (Show a, Read b) => a -> b. how might we tell GHC with
-- instance of Read to dispatch against the String now?
-- Make the expression print (roundTrip 4) work.
-- you will only need the has type type syntax of ::
-- and parthese for scoping

roundTrip2 :: (Show a, Read b) => a -> b
roundTrip2 a = read (show a)

main2 = do
  print (roundTrip2 4 :: Int)
  print (id 4)
