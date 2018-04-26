maximums :: (Ord a) => [a] -> a
maximums [] = error "maximum of empty list"
maximums [x] = x
maximums (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximums xs 
