-- x and y coordinates or lengths

data Catesian2D = Cartesian2D Double Double
                  deriving (Eq, Show)

--angle and distance (magnitude)
data Polar2D = Polar2D Double Double
               deriving (Eq, Show)

-- The Cartesian and polar forms use the same types for their two elements.
-- However, the meanings of the elements are different. Because Cartesian2D and
-- Polar2D are distinct types, the type system will not let us accidentally use
-- a Cartesian2D value where a Polar2D is expected, or vice versa.
