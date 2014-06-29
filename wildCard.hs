getCommand "greet" = "Greetings!"
getCommand "goodbye" = "F*ck You!"
{-

getCommand "great" or "goodbye" will give you write answer,
any other argument will be ILLEGAL.

To handle it use wild card operator _
-}
getCommand _ = "Espeako English?"

{-
Return third variable in a tuple
-}

-- Will always return thrid
trd (_,_,a) = a

