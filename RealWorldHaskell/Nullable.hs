module Main where
  
data Maybe a = Just a
             | Nothing


-- Here the variable a is a not a regular variable: its a type variable
-- It indicates that the Maybe type takes another type as its parameter

someBool = Just True

someString = Just "something"
