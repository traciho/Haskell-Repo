-- 1 it's not a typo, we're just being cute with the name

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn a') = a == a'
  
