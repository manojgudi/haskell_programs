import Data.Tuple (swap)
{-
tuples are very different than lists in haskell,
maximum tuple can hold is 15 values.
-}

mytuple = ("Manoj", 22)

{- Remember that all tuples in list of tuples should be of
 same type
to check type
:t variable_name for *ghci only*

lookup is a maybe type
returns value or returns Nothing

Also import should be done at TOP only
 -}


mylisttuples = [("Manoj", 22), ("JenniferL", 24), ("MirandaC", 18)]
main = do
    putStrLn (" Manoj's age is " ++ show (lookup "Manoj" mylisttuples))
    putStrLn (" Now Lets Try reverse: 24 years old chick is "  
        ++ show (lookup 24 (map swap mylisttuples)))
 
    putStrLn (" zip'ping in haskell is similar to python " 
        ++ show (zip [1,2,3] ["Manoj", "Rajni", "Bachan"]) )
