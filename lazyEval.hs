mylist = [4,5,6, error "whoops", 4,5,6]

{-
Remember with putStrLn the output always has to be IO type

take n elements from top of list

similary to return elements by dropping n of them 
from top of list

drop 4 mylist

-}

thisWorks = let 
        output = take 3 mylist
    in putStrLn ("Lazy Evaluating mylist:" ++ show output)

thisDoesnt = let
        output = take 4 mylist
        in putStrLn ("Lazy Evaluating mylist:" ++ show output)

{-
Inserting this in main | ghc can compile, 
and thisWorks function will be called on invoking the binary
-}
main = do
    thisWorks
