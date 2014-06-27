
{- This function takestwo numbers a & b 
 returns even'ized version of both the numbers
-}
alwaysEven a b = let isEven x = if even x
                                then x
                                else x-1
                            in (isEven a, isEven b)


-- Same function implemented using where statement

alwaysEven a b = (isEven a, isEven b)
    where isEven x = if even x then x else x-1

{-
where and let can access anything inside parent functions, 
other naked functions(which are in this file)
Check that video 1 for more info
-}
