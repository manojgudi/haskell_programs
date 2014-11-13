{- functor class

class Functor f where
fmap :: Functor f => (a -> b) -> f a -> f b

fmap is *generalization* of map
Functors are for giving you the fmap function

fmap also works on type constructor like Maybe
Maybe can take Just x or Nothing

where f is a type constructor (takes a type as input)
-}

exFmap = fmap (+1) [1..4]

{- fmap vs map
 - suppose x has type Maybe:
 - ex2Fmap  (Just 10) gives answer Just 17
 - ex2Fmap (Nothing) gives answer Nothing
 - map cannot do this, gives you error

Type deductions
fmap  (+7)    (Just 10)  = Just 17
fmap  (+7)     Nothing   = Nothing
 -  Int->Int  Maybe Int    Maybe Int
-}
ex2Fmap x = fmap (+7) x

{- Using fmap to map other functions
 - over Maybe type
 - length function gives out the length of a list
 - length :: [a] -> Int

fmap    length             Nothing                      = Nothing
fmap    length    (Just [5.0, 4.0, 3.0, 2.0, 1.573458]) = Just 5
 -  [Double]->Int         Maybe [Double]                  Maybe Int

Works also for strings
----------------------
fmap   show     [3,4,5] = ["3", "4", "5"]
-- Int->String   [Int]       [String]

-}
ex3Fmap x = fmap length x


{-------------- Using it on IO --------------
 -}

echo1 :: IO()
echo1 = do
    putStrLn "Say something"
    whattheysaid <- getLine     -- getLine  :: IO String
    putStrLn whattheysaid       -- putStrLn :: String -> IO()

-- Same as echo1, slightly terse
echo2 :: IO()
echo2 = putStrLn "Say something"
        >> getLine >>= putStrLn -- Using prelude and bind operator

-- Same as echo*, more elaborate
greet2 :: IO()
greet2 = putStrLn "What's your name?"
        >> getLine >>= (\name -> putStrLn ("Yo " ++ name  ))

-- Same as greet2 but more elaborate
-- fmap ("Hello, " ++)  getLine   = -- read a line, return "Hello, " in front of it
--      String->String  IO String    IO String
greet3 :: IO()
greet3 = putStrLn "What's your name?"
        >> fmap ("Yo "++) getLine >>= putStrLn

{- Similar applications

fmap   not      readLn   -- read a line that has a Bool on it, change it
--  Bool->Bool  IO Bool  IO Bool

fmap    length      (readFile "myfile.txt") -- read file and return the length of string
     String -> Int   FilePath -> IO String
-}

-- source (2nd answer)
-- http://stackoverflow.com/questions/13134825/how-do-functors-work-in-haskell
