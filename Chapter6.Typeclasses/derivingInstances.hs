data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun

instance Eq DayOfWeek where
  (==) Mon Mon   = True
  (==) Tue Tue   = True
  (==) Weds Weds = True
  (==) Thu Thu   = True
  (==) Fri Fri   = True
  (==) Sat Sat   = True
  (==) Sun Sun   = True
  (==) _  _      = False


f :: Int -> Bool
f 1 = True
f 2 = True
f 3 = True
f _ = False

data Numbers =
   1 | 2 | 3 | 4

instance Eq Numbers where
  (==) 1 1 = True
  (==) 2 2 = True
  (==) 3 3 = True
  (==) _ _ = False
