-- Chapter Exercises
--
-- Review types
--
-- 1. what is the type of [[True, False], [True, False], [False, True]]?
-- d)[[Bool]]
--
-- 2. Which of the following has the same type as [[True, False], [True, False], [False, True]]?
-- b) [[3 == 3], [6 > 5], [3 < 4]]
--
-- 3. For the following function
func :: [a] -> [a] -> [a]
func x y = x ++ y
-- which of the following is true?
-- a) x and y must be of the same type
-- b) x and y must both be lists
-- c) if x is a String then y must be a String
-- --> d) all of the above
--
-- 4. For the func code above, which is a valid appliacation of func
-- to both of its arguments?
-- a) func "Hello" "World"


-- Reviewing Currying
-- Given the following defintions, tell us what the value
-- results from further applicaitons.

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow" ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny " woops"

frappe :: String -> String
frappe = flippy " haha"

-- 1. What is the value of appedCatty "woohoo!" ?
-- "woops mrow woohoo!"
--
-- 2. frappe "1"
-- "1 mrow haha"
--
-- 3. frappe (appedCatty "2")
-- "woops mrow2 mrow haha"
--
-- 4. cattyConny (frappe "pink")
--               (cattyConny "green" (appedCatty "blue"))
-- "pink mrowhaha mrowgreen mrowwoops mrowblue"
--
-- 6. cattyConny (flippy "Pugs" "are") "awesome"
-- "are mrowPugs mrowawesome"
