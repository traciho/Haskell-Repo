Do your best to determine the most polymorphic
type an expression could have

1. All function applications return a value. Determine the value returns by these
function applications and the type of that values

a) (* 9) 6
  a = (* 9) 6
  a :: Num => a

b) head [(0, "doge"), (1, "kitteh")]
  b = head [(0, "doge"), (1, "kitteh")]
  b :: Num a => (a, [Char])

c) head [(0 :: Integer, "doge"), (1, "kitteh")]
 c = head [(0 :: Integer, "doge"), (1, "kitteh")]
 c :: (Integer, [Char])

d) if False then True else False
  d = if False then True else False
  d :: Bool
e) length [1, 2, 3, 4, 5]
  e = length [1, 2, 3, 4, 5]
  e :: [a] -> Int
f) (length [1, 2, 3, 4,]) > (length "TACOCAT")
 f = (length [1, 2, 3, 4,]) > (length "TACOCAT")
 f :: Bool



2. Given
x = 5
y = x + 5
w = y * 10
what is the of type w?
  w :: Num a => a

3. Given
x = 5
y = x + 5
z y = y * 10
what is the of type z?
  z :: Num a => a -> a

4. Given
x = 5
y = x + 5
f = 4 / y
what is the of type f?
  f :: Fractional a => a

5. Given
x = "Julie"
y = " <3 "
z = "Haskell"
f = x ++ y ++ z
what is the type of f?
 f :: [Char]


Does it compile?
For each set of expressions, figure out which expression, if any, causes
the compiler to squawk at you (n.b. we do not mean literal squawking)
and why. Fix it if you can.

1. bigNum = (^) 5 $ 10
   wahoo = bigNum $ 10

This doesn't work because it can't reduce
to anything after bigNum has already reduced 5 to the power of 10
wahoo would basically be 976525 and 10 theres no function there.
we could do:

wahoo = (*) bigNum $ 10
with this you can use 10 and apply it with (*) operator with bigNum

2. x = print
   y = print "woohoo!"
   z = x "hello world"

x will not work because there's nothing to print there's no instruction/recipe to
perform an action (print)

3. a = (+)
   b = 5
   c = b 10
   d = c 200
a and b will work because you're just saying two values, c and d have no operators
and can't be applied to 10 and 200 to resolve this we could do:

c = a b 10 -- this is saying add an operator (+) to apply b to 10
d = a c 200 --

4. a = 12 + b
   b = 1000 * c
a and b does not work because we have no value to c.
to fix this we first need to put
  c = 5
now that c has a value we can apply it to b with an operator then b
then b can then be applied to 12
