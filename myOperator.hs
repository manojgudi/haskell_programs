{-
Writing own infix function
-}

-- $% now will be an infix function with following behavior
{-
This statement will work in ghci, in source files you cannot 
start with let keyword
> let a +! b = a ^ b ---> Works only in ghci


Prefix functions like max
> max 1 5   ---> Will give you 5
Using them as infix
1 `max` 5

To check if your new symbol exists, you should get no result found
when you search in haskell.org/hoogle/
-}

-- Infix as prefix
(#$) a b = a + b --This how you implement your own operator
