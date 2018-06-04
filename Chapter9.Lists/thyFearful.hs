myWords :: String -> [String]
myWords str = go (dropWhile (==' ') str) []
  where go s arr
          | length s == 0 = arr
          | otherwise = go (dropWhile (==' ')
                           (dropWhile (/=' ') s))
                           (arr ++ [(takeWhile (/=' ') s)])

myWords2 :: [Char] -> [[Char]]
myWords2 sentence = go sentence []
  where go [] output = reverse output
        go sentence output = go (drop 1 $ dropWhile (/=' ') sentence)
                                ((takeWhile (/=' ') sentence) : output)
