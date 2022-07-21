main :: IO ()

el :: String -> String -> String 
el tag content = 
    "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "title"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

myTitle :: String
myTitle = "HELLO NOWHERE"

myBody :: String
myBody = "Hello there the angel from my nightmare"

makeHtml :: String -> String -> String
makeHtml title body = html_ (head_ (title_ (h1_ title)) <> body_ (p_ body))

myHtml :: String
myHtml = makeHtml myTitle myBody

main = putStrLn (myHtml)