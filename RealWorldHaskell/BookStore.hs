data BookInfo = Book Int String [String]
                deriving (Show)


data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String


data BetterReview = BetterReview BookInfo CustomerID ReviewBody
myInfo = Book 9751 "Algebra of Programming"
         ["Richard Bird", "Ogde de Moor"]


type BookRecord = (BookInfo, BookReview)


-- We can pattern match on an algebraic data type using its value constructors.
-- Recall the BookInfo type we defined earlier: we can extract the values from a
-- BookInfo as follows

bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

-- The compiler can infer the types the ancessor functions based on the
-- constructor we're using in our pattern.

nicerID      (Book id _ _ )      = id
nicerTitle   (Book _ title _)    = title
nicerAuthors (Book _ _ authors ) = authors

-- here we have a tidier version of the acessor function
-- we introduced earlier. Now, there's no qeustion about
-- which element we're using in each function


-- writing accesor functions for each of data type's components
-- can be repetivie and tedious

-- We call this kind of code boilerplate: necessary, but bulky and irksome.
-- Haskell programmers don't like boilerplate. Fortunately, the language addresses
-- this particular boilerplate problem: we can define a data type, and accessors
-- for each of its components, simultaneously

type Address = [String]

data Customer = Customer {
    customerID :: CustomerID
  , customerName :: String
  , customerAddress :: Address
  } deriving (Show)

-- this is almost exactly identical in meaning to AltCustomer.hs

-- We can still use the usual application syntax to create a
--value of this type
customer1 = Customer 271828 "J.R. Hacker"
            ["255 Syntax Ct",
             "Milpitas, CA 95134",
             "USA"]
-- Record syntax adds a more verbose notation for creating a value
-- this can sometimes make it more readable
customer2 = Customer {
             customerID = 271828
           , customerAddress = ["1048576 Disk Drive",
                                "Milpitas, CA 95134",
                                "USA"]
           , customerName = "Jane Q. Citizen"
           }
-- If we use this form, we can vary the order in which we list fields.
-- Here, we have moved the name and address fields from their positions in
-- the declaration of the type
