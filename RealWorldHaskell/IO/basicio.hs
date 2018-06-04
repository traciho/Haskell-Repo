main = do
  putStrLn "Greetings! What is your name"
  yourName <- getLine
  putStrLn $ "Welcome to Haskell, " ++ yourName ++ "!"
