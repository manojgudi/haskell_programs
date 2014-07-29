{-
IO is usually done by impure functions(side effects)
-}

-- Simple IO Function 
hello :: String -> IO()
hello str = putStrLn ("Hello " ++ str)

{-
IO in a pure function can be done using `do` keyword
Prints the value and returns an integer++ value
-}

nextNum :: Int -> IO Int
nextNum i = do
    putStrLn (" Value input " ++ show i)
    return (succ i) -- return keyword to return anything which is not IO

-- Interacting with user input
encrypt :: String -> String
encrypt a = map succ a  --Accepts list/strings 

main = do 
    input <- getLine --input is a pure string extracted from impure IO String returned from getLine
    putStrLn (encrypt input)


{-
Difference between 

putStr   |   putStrLn    |   print
S -> S   |   S -> S +\n" |   takes from Show class(like Int) -> IO Show
                             For ex: Int -> IO Int
-}

{- map print ["Hello", "world"]  -- Error since type signature mismatch

Use mapM  instead i.e. map Monadic style (to remove units use mapM_)
List of IO Functions done using sequence

sequence [getLine, getLine]  returns list of strings (pure)

-}


