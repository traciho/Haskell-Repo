data BookInfo = Book Int String [String]
                deriving (Show)

--BookInfo is the name of our new type
--BookInfo TypeConstructor.

--Book that follows is the name of the value constructor
-- we use this to createa  value of the BookInfo Type
-- Int String and [String] that follows are the
-- components of the type

-- in this example the Int represents a book's
--identifier, String its title and
-- [String] the name of it's authors

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

data BookReview = BookReview BookInfo CustomerID String
--BookReview has a value constructor that is also named
--BookReview
type CustomerID = Int
type ReviewBody = String
-- We can introduce a synonym for an existing type at any time, to
--  give a type a more descriptive name. For example, the String in
--  our BookReview type doesn't tell us what the string is for,
--   but we can clarify this.

data BetterReview = BetterReview BookInfo CustomerID ReviewBody
myInfo = Book 9751 "Algebra of Programming"
         ["Richard Bird", "Ogde de Moor"]


type BookRecord = (BookInfo, BookReview)

-- This states that we can use BookRecord as a synonym
-- for the tuple (BookInfo, BookReview) A type
-- synonym only creates a new name that regers to an existing Type
-- we still use the same value cnstructrs to create a value of the type
