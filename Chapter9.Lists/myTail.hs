myTail :: [a] -> [a]
myTail [ ] = [ ]
myTail(_:xs)=xs


safeTail      :: [a] -> Maybe [a]
safeTail []   = Nothing
safeTail (x:[]) = Nothing
safeTail (_xs) = Just xs
