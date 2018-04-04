-- Fix this broken code : given
--    module sing where
--
--      fstString :: [Char] ++ [Char]
--      fstString x = x ++ " in the rain"
--
--      sndString :: [Char] -> Char
--      sndString x = x ++ " over the rainbow"
--
--      sing = if (x > y) then fstString x or sndString y
--      where x = "Singin"

module Sing where

fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x > y) then fstString x else sndString y
    where x = "Singin"
          y = "Somewhere"
-- 2. Now that it's fixed, make a minor change and make it singlethe other song.
-- If you're lucky, you'll end up with both songs stuck in your head!

---     change > to <
-- sing = if (x > y) then fstString x else sndString y
--     where x = "Singin"
--           y = "Somewhere"
