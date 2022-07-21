-- CREATING NEW TYPES
-- a type constructor is just a function that takes the underlying type
-- as an arg, and returns a value of the new type

newtype Html = Html String

newtype Structure = Structure String

-- USING NEW TYPES

-- need to use a case expression to extract the underlying type from the 
-- new type
-- ie:

getStructureString :: Structure -> String

-- getStructureString struct = 
--     case struct of
--         Structure str -> str

-- ^ we just converted the structure value back to a string value

-- another way to do this is just pattern matching on args

getStructureString (Structure str) = str

-- COMPOSE function
-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- (.) f g x = f (g x)

-- with all this in mind, we can take our functions from the last part
-- and use these new types with them

-- p_ :: String -> Structure
-- p_ = Structure . el "p"

append_ :: Structure -> Structure -> Structure

structA = Structure "i am structA"
structB = Structure "structB here"

getStructureStrings :: Structure -> Structure -> String

-- YOUR SOLUTION ::

getStructureStrings (Structure str1) (Structure str2) = str1 <> str2

-- append_ struct1 struct2 = Structure (getStructureStrings struct1 struct2)

-- THE TEXT SOLUTION ::

append_ (Structure a) (Structure b) = Structure (a <> b)

-- implement render function that takes Html and returns String

render :: Html -> String

render (Html str) = str

-- refactoring code from previous section

el :: String -> String -> String 
el tag content = 
    "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

type Title = String
type Body = String

html_ :: Title -> Body -> Html
html_ title body = Html (head_ (title_ (h1_ title)) <> body_ (p_ body))

body_ :: String -> String
body_ = el "body"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "title"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ =  el "h1"

myTitle :: String
myTitle = "HELLO NOWHERE"

myBody :: String
myBody = "Hello there the angel from my nightmare"

myHtml :: Html
myHtml = html_ myTitle myBody 

main :: IO ()

main = putStrLn (render myHtml)