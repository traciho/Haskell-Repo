data List a = Cons a (List a)
            | Nil
              deriving (Show)

Because list a appears on both the left and the right of the = sign
the type's definition refers to itself. If we ant ot use the Cons
constructor to create a new value, we must supply one value of type a, and another type
list a.
