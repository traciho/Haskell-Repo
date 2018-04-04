Given a type, write the function
You will be shown a type and a function that needs to be written
Use the information the type provides to determine what
the function should do.

1. There is only one function definition that typechecks and doens't go
into an infinite loop when you run it.

i :: a -> a (for all a get an argument of some type a and return
a value of the same type a)
i x = x

2. There is only one version that works

c :: a -> b -> a
c x y = x

3. Given alpha equialence are c'' and c (see above) the same thing?
c'' :: b -> a -> b
c'' x y = x

yes it's the same

4. Only one verison that works

c' :: a -> b -> b
c' x y = y

5. There are multiple possibilities, at least two of which you've seen
in previous chapters.

r :: [a] -> [a]
r x = x

6. Only one version that will typecheck

co ::    (b -> c)
      -> (a -> b)
      -> a
      -> c
co bToC aToB a = bToC (aToB a)


7. One version will typecheck
a :: (a -> c) -> a -> a
a _ x = x

8. One version will typecheck

a' :: (a -> b) -> a -> b
a' xToY x = xToY x
