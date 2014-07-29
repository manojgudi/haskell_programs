{-
Basic use of instances
-}

newtype MyId = Id {getId :: Int}

-- MyId is instance of Show class
instance Show MyId where
    show a = show (getId a)

{-
The reason this doesn't result in an infinite loop 
i.e. show on both sides is because we're first using
show on MyId and then on Int (nested under MyId)
example of Function Overloading

DOUBT: Didn't understand constructor getId
-}

-- Function to equate first and second data

instance Eq MyData where
    FirstData == SecondData = True
    SecondData == FirstData = True
    SecondData == LastData = True
    LastData == LastData = True
    _ == _ = False
{-
To equate type classes and stuff

DOUBT: Usecase?
-}
