inc :: Num a => a -> a
inc = (+1)

three = inc . inc . inc $ 4
thres = (inc. inc. inc) 0

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes 0 n =
  n
incTimes times n =
  1 + (incTimes (times - 1) n)

applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b =
  b
applyTimes n f b =
  f . applyTimes (n - 1) f $ b

incTimess :: (Eq a, Num a) => a -> a -> a
incTimess times n = applyTimes times (+1) n
