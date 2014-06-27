{-

String is list of characters

Functions

Takes top value
> head [1,2,3]
1

Returns everything except head
> tail [2,3,4]
[3,4]

Returns everything except last
> init [2,3,4]
[2,3]

Takes last value
> last [2,3,4]
4

> 4 : [5,6] 
[4,5,6]
> [4,5]: 6  -- ILLEGAL


Get n'th element from list
ORDERING STARTS FROM 0 like in python
> [4,5,6] !! 2
6

Merging 2 or more lists
> [4,5,6] ++ [3,4,5]
[4,5,6,3,4,5]

NOTE ++ appends, colon prepends, colon is FASTER than ++
-}
