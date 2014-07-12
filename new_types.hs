
-- How string is implmeneted
type String = [Char]

-- Custom types (Compound types)
type Username = [Char]
type Id = Int
type User = (Username, Id)

-- A function using these types
user :: Username -> Id -> User
user u i = (u,i)

{-
New type statement 

Check newtype vs type:
    With newtype Haskell sees newtype as an separate entity
    For ex. try :t Id in ghci commenting MyId
        it gives an error (Not in scope: data constructor 'Id')

Id is a constructor of type Id
MyId is the new type
getId is a function to extract the Int inside
    QUESTION: How does getId know what to return?

MyId is an instance of show class required to print on the screen
Used to prevent type check error
-}

-- Uncomment last line and comment the newtype definition later 
--newtype MyId = Id { getId :: Int } deriving Show
-- try :t Id(1) it returns *

{-
One more way to do this is 

-}
newtype MyId = Id Int deriving (Show)
-- Write getId by pattern matching
getId (Id a) = a


