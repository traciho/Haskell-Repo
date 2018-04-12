-- We have a sum type called WherePenguinsLive

data WherePenguinsLive =
    Galapagos
  | Antartica
  | Australia
  | SouthAfrica
  | SouthAmerica
  deriving (Eq, Show)

-- A product type called Penguin
-- for now you can think of Penguin as a type with only
-- one value, Peng and that value is a sort of box that
-- that contains a WherePenguinsLive value:
data Penguin =
  Peng WherePenguinsLive
  deriving (Eq, Show)

-- Given these datatypes, we will write a couple functions
-- for processiong the data:

-- is it South Africa? if so, return True

-- isSouthAfrica :: WherePenguinsLive -> Bool
-- isSouthAfrica SouthAfrica = True
-- isSouthAfrica Galapagos = False
-- isSouthAfrica Antartica = False
-- isSouthAfrica Australia = False
-- isSouthAfrica SouthAmerica = False

-- but that is redundant. We can use _ to indicate an
-- unconditional match on a value we don't care about.
-- The following is better (more concise, easier to read)
-- and does the same thing:

isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica _           = False

-- We can also use pattern matching to unpack Penguin
-- values to get at the WherePenguinsLive value it contains:

gimmeWhereTheyLive :: Penguin
                   -> WherePenguinsLive
gimmeWhereTheyLive (Peng whereitlives) =
  whereitlives

humbodlt = Peng SouthAmerica
gentoo = Peng Antartica
macaroni = Peng Antartica
little = Peng Australia
galapagos = Peng Galapagos

-- Now a more elaborate example. We'll expose the contents
-- of Peng and match on what WherePenguinsLive value
-- we care about in one pattern match:

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _                = False

antarcticaPenguin :: Penguin -> Bool
antarcticaPenguin (Peng Antartica) = True
antarcticaPenguin _                = False

-- in this final function, the (||) operator is an or function
-- that will return True if either value is True:

antarcticOrGalapagos :: Penguin -> Bool
antarcticOrGalapagos p =
     (galapagosPenguin p)
  || (antarcticaPenguin p)


-- note that we're using pattern matching to accomplish two things
-- here. We're using it to unpack the Penguin datatype.
-- We're also specifying which WherePenguinsLive
-- value we want to match on.
