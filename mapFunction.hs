
{-
Writing implementation of map function in haskell
-}

-- This is default value
myMap _ [] = []
--  Recursive call to myMap
myMap f (x:xs) = f x : myMap f xs

{-
Works as following:
> myMap (+1) [1..10]
That executes as 
f 1 : f 2 : f 3 : f 4 : .. : f 10: []
-}
