{-
Types in haskell 
char 'a' 'b'  SINGLE QUOTES
Bool True/False
Int = Integer 1,2,3
Float 1.0, 2.0..
Double 1.0, 2.0
String "a"

To know type
:t variable_name

Functions also have their types
-}


-- Checking type signature of functions
-- helpful to return errors on compile time if diff sign.
head :: [a] -> a
head (x:_) = x

{- For max function
Now since > is a symbol in Order class, 
we need to have signature which is of Ord class 
(and 'a' is not a valid type)
a -> a -> a  means it takes two input or type a and returns a
-}
max' :: (Ord a) => a -> a -> a
-- Even this is correct max' :: Int -> Int -> Int
max' a b = if a > b then a else b

-- Write types such that it makes function polymorphic
