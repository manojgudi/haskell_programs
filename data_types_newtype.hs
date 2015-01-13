{-
 - An Example difference between data, type, newtype
 - -}

 {-
  - data is used to declare a new algebraic data type.
  - -}
data Bool    = True    | False -- Boolean
data Maybe a = Nothing | Just a -- Monadic

{- 
 - type is used to create an alias for an algebraic type
 - -}
type String = [Char] -- This is in Prelude

 {-
  - newtype acts similarly to type with a syntax akin to data.
  - -}
newtype Radius = Radius Double
data Diameter  = Diameter Double

{-
  Okay, so what's the difference between newtype and data? Three things (that I'm aware of):
    newtype can only have a single constructor taking a single argument.
    newtype creates a strict value constructor and type creates a lazy one (see [1]).
    newtype introduces no runtime overhead.
-}
