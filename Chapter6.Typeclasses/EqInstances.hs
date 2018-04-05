--Exercises : Eq Instannces
-- Write the Eq instance for the data type provided

-- 1 it's not a typo, we're just being cute with the name

data TisAnInteger =
  TisAn Integer
--TisAnInteger has One parameter that takes an Integer
instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn a') = a == a'

--2
data TwoIntegers =
  Two Integer Integer
--TwoIntegers has Two parameters which takes Integer

instance Eq TwoIntegers
  where
    (==) (Two a b) (Two a' b') = (a,b) == (a', b')

--3
data StringOrInt =
  TisAnInt Int | TisAString String
-- the data type StringOrInt has a 2 value constructors of
--TisanInt that takes one parameter of Int
--OR
--TisAString takes one parameter of String

instance Eq StringOrInt
  where
    (==) (TisAnInt a) (TisAnInt a') = a == a'
    (==) (TisAString a) (TisAString a') = a == a'
    (==) _ _ = False

--4
data Pair a =
  Pair a
-- Pair a has a value constructor of Pair with
-- that takes of type a
-- because we don't knw anything of type a or if it has
-- an Eq instance we must use the Eq typeclass constraint syntax

instance Eq a => Eq (Pair a)
  where
    (==) (Pair x) (Pair x') = x == x'

--5
data Tuple a b =
  Tuple a b

-- Tuple has a value constructor of Tuple that takes
-- two parameters of a and b
--needs a Eq constraint instance for a and b

instance (Eq a, Eq b) => Eq (Tuple a b)
  where
    (==) (Tuple a b) (Tuple a' b') = (a, b) == (a', b')

--6
data Which a =
    ThisOne a
  | ThatOne a

-- Which has a 2 val constructors of ThisOne or ThatOne

instance Eq a => Eq (Which a)
  where
    (==) (ThisOne a) (ThisOne a') = a == a'
    (==) (ThatOne a) (ThatOne a') = a == a'
    (==) _ _ = False

--7
data EitherOr a b =
    Hello a
  | Goodbye b

-- EitherOr has 2 value constructors of
-- Hello a or Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b)
  where
    (==) (Hello a) (Hello a') = a == a'
    (==) (Goodbye b) (Goodbye b') = b == b'
    (==) _ _ = False 
