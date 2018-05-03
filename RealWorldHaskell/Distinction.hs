-- Algebraic data types allow us to distinguish between otherwise identical
-- pieces of information. Two tuples with elements of the same type are
-- structurally identical, so they have the same type. 7 comments

a = ("Porpoise", "Grey")
b = ("Table", "Oak")

-- since they have differnet names, two algebraic data types have distinct types,
-- even if they are otherwise strcuturally equivalent

data Cetacean = Cetacean String String
data Furniture = Furniture String String

c = Cetacean "Porpoise" "Grey"
d = Furniture "Table" "Oak"

-- This lets us bring the type system to bear in writing programs with fewer bugs.
-- With the tuples we defined above, we could conveivably pass a description of
-- a whale to a function expecting a chair, and the type system could not help
-- us. With the algebraic data types, there is no such possibility of confusion.
