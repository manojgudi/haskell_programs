{-
Guards are pattern matching for greater than less than checks

Function which returns last five items of list
For guards equal to is not used, use vertical bar for each check

If length of tail is less than 5, then return xxs,
otherwise return (last5 xs)
-}

-- safety net since we are pattern matching here too
last5 [] = []
last5 xxs@(_:xs)
    | length xs <= 5 = xxs
    | otherwise      = last5 xs
