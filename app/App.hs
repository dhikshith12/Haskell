module App where

-- Single line comments start with two dashes.
{- Multiline comments can be enclosed
in a block like this.
-}

----------------------------------------------------
-- 1. Primitive Datatypes and Operators
----------------------------------------------------

-- You have numbers
3 -- 3

-- Math is what you would expect
1 + 1 -- 2
8 - 1 -- 7
10 * 2 -- 20
35 / 5 -- 7.0

-- Division is not integer division by default
35 / 4 -- 8.75

-- integer division
35 `div` 4 -- 8 [crazy syntax, right?]

-- Boolean values are primitives
True
False

-- Boolean operations
not True -- False
not False -- True
True && False -- False
True || False -- True
1 == 1 -- True
1 /= 1 -- False [crazy syntax, right?]
1 < 10 -- True

-- In the above examples, `not` is a function that takes one value.
-- Haskell doesn't need parentheses for function calls...all the arguments
-- are just listed after the function. So the general pattern is:
-- func arg1 arg2 arg3...
-- See the section on functions for information on how to write your own.

-- Strings are lists of characters denoted by double quotes
"This is a string."
'a' -- not a string, just a character. Note the single quotes.

-- Strings can be concatenated
"Hello " ++ "world!" -- "Hello world!" [again with the crazy syntax]

-- A string is a list of characters
['H', 'e', 'l', 'l', 'o'] -- "Hello"

-- Lists can be indexed with the `!!` operator followed by the index
"Hello" !! 0 -- 'H'
"Hello" !! 4 -- 'o' [more crazy stuff]

--------------------------------------------------------------------------------
-- 2. Lists and Tuples
-------------------------------------------------------------------------------- 

-- Every element in a list must have the same type.
-- These two lists are equal: 
[1, 2, 3, 4, 5]
[1..5]

-- Ranges are versatile.
['A'..'F'] -- "ABCDEF"

-- You can create a step in a range.
[0, 2..10] -- [0, 2, 4, 6, 8, 10] [note that 10 is included] 
[0, 2..9] -- [0, 2, 4, 6, 8] [note that 9 is included]
[0, 2..8] -- [0, 2, 4, 6, 8] [note that 8 is included]
[0, 2..7] -- [0, 2, 4, 6] [note that 7 is included]
-- [[that's crazy, right?]] [0, 2..10], here `2` is not the step but the next element in the list]

[5..1] -- [] [note that this is empty, Haskell defaults to incrementing]
[5, 4..1] -- [5, 4, 3, 2, 1] [note that 1 is included]
[5, 4..1] -- [5, 4, 3, 2, 1] [note that 1 is included]

-- indexing into a list
[1..10] !! 3 -- 4 (zero-based indexing)

-- Lists can be added together (but only if they contain the same type)
[1, 2, 3] ++ [4, 5] -- [1, 2, 3, 4, 5]

-- You can also have infinite lists in Haskell!! [crazy...!]
[1..] -- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, ...]

-- Infinite lists work because Haskell has "lazy evaluation". This means 
-- that Haskell only evaluates things when it needs to. So you can ask for 
-- the 1000the element of your list and Haskell will give it to you:
[1..] !! 999 -- 1000

-- And now Haskell has evalued elements 1 through 1000 of your list... but the
-- rest of the list is still unevaluated.

-- joining two lists
[1..5] ++ [6..10] -- [1..10]

-- adding to the head of a list
0:[1..5] -- [0..5]

-- more list operations
head [1..5] -- 1 
tail [1..5] -- [2, 3, 4, 5]
init [1..5] -- [1, 2, 3, 4]
last [1..5] -- 5


