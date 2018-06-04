Exercises: Square Cube

Prelude> let mySqr = [x^2 | x <- [1..5]]
Prelude> let myCube = [y^3 | y <- [1..5]]

1. First write an expression that will make tuples
of the outputs of mySqr and myCube

Prelude> :{
Prelude| [(x,y) |
Prelude| x <- mySqr,
Prelude| y <- myCube ]
Prelude| :}
[(1,1),(1,8),(1,27),(1,64),(1,125),(4,1),
(4,8),(4,27),(4,64),(4,125),(9,1),(9,8),
(9,27),(9,64),(9,125),(16,1),(16,8),(16,27),
(16,64),(16,125),(25,1),(25,8),(25,27),(25,64),(25,125)]

2. Now alter that expression so that it only uses
the x and y values that are less than 50

Prelude> :{
Prelude| [(x,y) |
Prelude| x <- mySqr,
Prelude| y <- myCube,
Prelude| x < 50, y < 50]
Prelude| :}
[(1,1),(1,8),(1,27),(4,1),(4,8),(4,27),(9,1),(9,8),
(9,27),(16,1),(16,8),(16,27),(25,1),(25,8),(25,27)]

3. Apply another function to that list comprehension
to determine how many tuples inhabit your output list
Prelude> :{
Prelude| length [(x,y) |
Prelude| x <- mySqr,
Prelude| y <- myCube,
Prelude| x < 50, y < 50]
Prelude| :}
15
