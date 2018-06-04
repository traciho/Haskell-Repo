name2reply :: String -> String
name2reply name =
  "Pleased to meet you, " ++ name ++ "./n" ++
  "Your name contrains " ++ charcount ++ " characters."
  where charcount = show (length name)
