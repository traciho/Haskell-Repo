module GreetifCool3 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  case cool of
    True  ->
      putStrLn "eyyy. What's Shakin' ?"
    False ->
      putStrLn "pshhhh. "
    where cool =
            coolness == "downright frosty yo"

-- coolness is == "downright frosty yo"
-- not equal to cool other wise 
