module Tail where

myTail :: [a] -> [a]
myTail [ ] = [ ]
myTail(_:xs)=xs


safeTail      :: [a] -> Maybe [a]
safeTail []   = Nothing -- empty list = nothing
safeTail (x:[]) = Nothing -- list with only one value = nothing
safeTail (_:xs) = Just xs  --


--Make your own safeHead

safeHead :: [a] -> Maybe a
safeHead []   = Nothing
safeHead (x:_) = Just x
