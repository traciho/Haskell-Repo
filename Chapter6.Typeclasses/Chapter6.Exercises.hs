--Multiple Choice
-- 1. The Eq Class
-- a) includes all types in Haskell
-- b) is the same as the Ord class
--  --> c) makes equality tests possible
-- d) only inlcdes numeric types

-- 2. The typeclass Ord
-- a) allows any two values to be compared
--  --> b) is a subclass of Eq
-- c) is a superclass of Eq
-- d) has no instance for Bool
--
-- 3. Suppose the typeclass Ord has an operator >.
--    what is the type of >?
--  --> a) Ord a => a -> a -> Bool
-- b) Ord a => Int -> Bool
-- c) Ord a => a -> Char
-- d) Ord a => Char -> [Char]

-- 4. In x = divMod 16 12
-- a) the type of x in Integer
-- b) the value of x is undecidable
-- c) the type of x is a tuple
--  --> d) x is equal to 12 / 16

-- 5. The typeclass Integral includes
--  --> a) Int and Integer Numbers
-- b) integral, real and fractional numbers
-- c) Schrodinger's cat
-- d) only positive numbers


-- Does it typecheck?

-- 1. Does the following code typecheck? If not, why not?
-- data Person =
--   Person Bool
--
-- printPerson :: Person -> IO ()
-- printPerson person = putStrLn (show person)
-- does not type check because person does not derive Show
-- Working code
data Person =
  Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- 2. Does the following code typecheck? If not, why not?
-- data Mood =
--   Blah
--     | Woot deriving Show
--
-- settleDown x = if x == Woot
--                   then Blah
--                   else x
-- this does not work becuase there is no Eq constraint
--Working code
data Mood =
  Blah
    | Woot deriving (Show, Eq)

settleDown x = if x == Woot
                  then Blah
                  else x
--
-- 3. if you were able to get settleDown to typecheck:
-- a) what values are acceptable inputs to that function
-- -- any values that are in the Eq typeclass
-- b) what will happen if you try to run settleDown 9? why?
-- -- would not work becuase there is no Num class
-- c) what wil lhappen if you try to run Blah > Woot? Why?
-- -- there is not use Ord class


-- 4. Does the following typecheck? if not, why not?

type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)
s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"
-- this type checks because the values are in the
-- correct typeclasses


--Given a datatype declaration, what can we do?
--Given the following datatype definitions:

data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)

--1.
-- phew = Papu "chases" True

-- this  does not work to make this work it.
phew = Papu (Rocks"chases") (Yeah True)

--2.
truth = Papu (Rocks "chomskudoz")
             (Yeah True)
-- this also type checks because its within the parameters
-- of Papu

--3.
equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'
-- this should check out becuase it is implementing Eq


--4.
-- comparePapus :: Papu -> Papu -> Bool
-- comparedPapus p p' = p > p'
-- this has no Ord instance
