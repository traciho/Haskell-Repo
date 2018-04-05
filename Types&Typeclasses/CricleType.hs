data Point = Point Float Float deriving (Show)
-- notice that when defining a point, we used the same name for the
-- data type and the value constructor.
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)
-- so now the circle has two fields, one is of the type Point
-- and the other of type Float.

--data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)
-- the Circle value constructor has three fields, which take floats
-- now when i say fields, i actually mean parameters.
--value constructors are actually functions that ultimately return
-- a value of a data type

surface :: Shape -> Float
-- this type declaration says that the function takes a Shape
-- and returns a float
-- we couldnt write a type declaration of Circle -> Float because
-- circle is not a type, shape is.
surface (Circle _ r)
            = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2))
            = (abs $ x2 - x1) * (abs $ y2 - y1)
-- this function takes a shape and returns it's surface
-- the next thing we notice here is that we can pattern match against
-- constructors beacurese we're not interested in the radius
-- we dont care about the first two fields which tell us where the
-- circle is
