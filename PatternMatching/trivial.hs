lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n + factorial (n - 1)

addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectorsPattern :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectorsPattern (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)



first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> case
third (_, _, z) = z

--the _ means that we dont really care waht that part is. so
-- we just write a _

heads :: [a] -> a
heads [] = error "Can't call head on an empty list"
heads (x:_) = x
