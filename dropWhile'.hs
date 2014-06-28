{-
dropWhile is an in-built command
-}

-- dropWhile takes a boolean value, drops items from the list till
-- the boolean value is true
main = putStrLn("Inbuilt dropWhile function " ++ show a)
    where a = dropWhile (<=5 ) [1..10]


{-
Writing our own dropwhile function

dropwhile' function drops first element only

(x:xs) corresponds to (head: tail) of list, 
(x:y:xs) is also valid (head: 2nd element: Tail)

one can use differenet variables for those.
If bool of head is true then return tail

dropwhile'' is essentially same as dropwhile' but
its cleaner
xxs@(x:xs) means xxs is a list viz x head and xxs is tail

dropWhile''' is full implementation of dropWhile
-}
dropWhile' bool (x:xs) = 
    if bool x then xs else (x:xs)


dropWhile'' bool xxs@(x:xs) = 
    if bool x then xs else xxs

-- Finally adding recursion
dropWhile''' bool xxs@(x:xs) =
    if bool x then dropWhile''' bool xs else xxs

-- Fail safe function If pattern match for empty list, 
-- return empty list
dropWhile''' _ [] = []

