{-
Making custom datatypes
data type that holds multiple values

data vs newtype

-}

data User = User {  userId :: Int,
                    userName :: String,
                    password :: String
                } deriving Show

{- let myUser = User 123 "uname1" "passwd"
 calling it ->
 mypass = password myUser
-}

-- Alternate way | Issue being: we've to pattern match everytime to get to them
--data User = User Int String String

-- Adding new constructor
data User' = Users
            | User' {  userId' :: Int,
                    userName' :: String,
                    password' :: String
                } deriving Show

{-

data vs newtype
data offers to hold multiple values/fields and types
data offers constructors

newtype might offer better performance
-}
