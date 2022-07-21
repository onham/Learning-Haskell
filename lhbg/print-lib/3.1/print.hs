html_ :: String -> String
html_ html = "<html>" <> html <> "</html>"

body_ :: String -> String
body_ content = "<body>" <> content <> "</body>"

head_ :: String -> String
head_ heading = "<head>" <> heading <> "</head>"

title_ :: String -> String
title_ title = "<title>" <> title <> "</title>"

myTitle :: String
myTitle = "HELLO NOWHERE"

myBody :: String
myBody = "Hello there the angel from my nightmare"

makeHtml :: String -> String -> String
makeHtml title body = html_ (head_ (title_ title) <> body_ body)

myHtml :: String
myHtml = makeHtml myTitle myBody

main = putStrLn (myHtml)