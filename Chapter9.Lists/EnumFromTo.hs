eftBool :: Bool -> Bool -> [Bool]
eftBool True False = []
eftBool True True = True : []
eftBool False False = False : []
eftBool b1 b2 = b1 : b2 : []


eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd GT GT = GT : []
eftOrd GT _ = []
eftOrd start stop = go start stop []
  where go ord endOrd list
            | ord == endOrd = list ++ [ord]
            | ord == GT     = list ++ [ord]
            | otherwise     = go (succ ord) endOrd (list ++ [ord])


eftInt :: Int -> Int -> [Int]
eftInt start stop = go start stop []
  where go n end list
          | n > end   = list
          | n == end  = list ++ [end]
          | otherwise = go (n + 1) end (list ++ [n])

eftChar :: Char -> Char -> [Char]
eftChar start stop = go start stop []
  where go char end list
          | char > end   = list
          | otherwise    = go (succ char) end (list ++ [char])

-- eftOrd :: Ordering -> Ordering -> [Ordering]
-- eftOrd LT LT = [LT]
-- eftOrd LT EQ = [LT EQ]
-- eftOrd LT GT = [LT EQ GT]
-- eftOrd EQ LT = []
-- eftOrd EQ EQ = [EQ]
-- eftOrd EQ GT = [EQ GT]
-- eftOrd GT LT = []
-- eftOrd GT EQ = []
-- eftOrd GT GT = [GT]

-- eftInt :: Int -> Int -> [Int]
-- eftInt from to =
--   | from > to = []
--   | from == to = [from]
--   | otherwise = from : eftInt (from + 1) to
--
-- eftChar :: Char -> Char -> [Char]
-- eftChar from to = map chr $ eftInt (ord from) (ord to)
--
-- eftBool :: Bool -> Bool -> [Bool]
-- eftBool = undefined
--
-- eftOrd :: Ordering -> Ordering  -> [Ordering]
-- eftOrd = undefined
--
-- eftInt :: Int -> Int -> [Int]
-- eftInt = undefined
--
-- eftChar :: Char -> Char -> [Char]
-- eftChar = undefined
