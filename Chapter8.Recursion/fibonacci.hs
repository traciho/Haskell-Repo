-- fibonacci :: Integral a => a -> a
-- fibonacci 0 = 0
-- fibonacci 1 = 1
-- fibonacci x = (x - 1) + (x - 2)


fibonacci :: Integral a => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x =
  fibonacci (x - 1) + fibonacci (x - 2)
