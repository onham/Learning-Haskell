
-- module exports ::

module Html
    (
        Html,
        Title,
        Structure,
        html_,
        p_,
        h1_,
        append_,
        render,
    )
    where

-- module imports ::

import Escape

-- type definitions ::

newtype Html
  = Html String

newtype Structure
  = Structure String

type Title
  = String

-- html function ::

html_ :: Title -> Structure -> Html
html_ title content =
  Html
    ( el "html"
      ( el "head" (el "title" (escape title))
        <> el "body" (getStructureString content)
      )
    )

-- element functions ::

p_ :: String -> Structure
p_ = Structure . el "p" . escape

h1_ :: String -> Structure
h1_ = Structure . el "h1" . escape

-- element function ::

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

-- render function ::

render :: Html -> String
render html =
  case html of
    Html str -> str

-- utility functions ::

append_ :: Structure -> Structure -> Structure
append_ c1 c2 =
  Structure (getStructureString c1 <> getStructureString c2)

getStructureString :: Structure -> String
getStructureString (Structure str) = str

