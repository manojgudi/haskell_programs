{-
Everything in haskell has a type
Use cases: Return a type defined by function or return Nothing

Maybe is a functor and a monad (not used in this script)
-}

import Data.Maybe

{-
This module has fromJust function | This function is not useful
since when answer is Nothing, it throws up error crashing program.

> fromJust (Nothing)
*** Exception: Maybe.fromJust: Nothing

> fromJust (Just "at")
"at"

-}
fromJust' :: Maybe a -> a
fromJust' Nothing = error "Maybe.fromJust: Nothing"
fromJust' (Just a) = a



-- Better option fromMaybe
{- Takes a value and a Maybe Value, returns intial value 
if Maybe Value is Nothing
 
> fromMaybe' "something" Nothing
"something"

> fromMaybe' 123 Nothing
123

-}
fromMaybe' :: a -> Maybe a -> a
fromMaybe' b Nothing = b
fromMaybe' _ (Just a) = a
