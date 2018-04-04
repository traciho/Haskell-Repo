data Identity a =
  Identity a

instance Ord a => Eq (Identity a) where
  (==) (Identity v) (Identity v') = v == v'
