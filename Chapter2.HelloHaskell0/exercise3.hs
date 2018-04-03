module Exercise3 where

mult10    = z / x + y
  where x = 7
        y = negate x
        z = y * 10
-- equivalent to
-- let x = 7
--     y = negate x
--     z = y * 10
--  in z / x + y
