dodgy x y = x + y * 10
oneIsOne = dodgy 1
oneIsTwo = (flip dodgy) 2

-- 1. for example, given the expression dodgy 1 0, what do you
-- think will happen if we evaluate it? If you put the
-- definitions in a file and load them into GHCi you can
-- do the following to see the result
--
--  Prelude> dodgy 1 0
--      1
-- Now attempt to dteremine what the following expressions reduce
-- to. Do it in your head, verify in your REPL after you think
-- you have the answer
--
-- 2. dodgy 1 1 = 11
-- 3. dodgy 2 2 = 24
-- 4. dodgy 1 2 = 21
-- 5. dodgy 2 1 = 12
-- 6. oneIsOne 1 = 11
-- 7. oneIsOne 2 = 12
-- 8. oneIsTwo 1 = 21
-- 9. oneIsTwo 2 = 22
-- 10. oneIsOne 3 = 31
-- 11. oneIsTwo 3 = 23
