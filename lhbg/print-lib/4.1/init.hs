type Document = [Structure]

-- how to think of this ::
-- the underlying type is "Structure"
-- the constructors can be thought of as methods to return something of the type
-- the constructors are also like structs, in that they are objects of the underlying type
data Structure 
    = Heading Natural String
    | Paragraph String
    | UnorderedList [String]
    | OrderedList [String]
    | CodeBlock [String]

-- Exercises ::

-- 1 ::
example1 :: Document
example1 = [
    Paragraph "Hello, World!"
    ]

-- 2 ::
example2 :: Document
example2 = [
    Heading 1 "Welcome",
    Paragraph "To this tutorial about Haskell"
]

-- 3 ::
example3 :: Document
example3 = [
    Paragraph "Remember that multiple lines with no separation are grouped together to a single paragraph but list items remain separate.",
    UnorderedList [
        "Item 1 of a list"
        "Item 2 of a list"
    ]
]

-- 4 ::
example4 :: Document
example4 = [
    Heading 1 "Compiling programs with GHC",
    Paragraph "Yeahhhh boi",
    Paragraph "yeahhh again install it",
    CodeBlock [
        "main = putThisInYourMouth \"Hello Haskellman\""
    ],
    Paragraph "now we compile foo",
    CodeBlock [
        "-> ghc hello .hs",
        "[1 of 1] Compiling foo",
        "linking your file"
    ],
    Paragraph "It created",
    UnorderedList [
        "hello.hi - haskell interface file",
        "hello.o - object file aka the output of compiler before linking",
        "hello - runnable executable"
    ],
    Paragraph "GHC will produce an executable when the source file satisfies both conditions:",
    OrderedList [
        "Defines the main function in the source file",
        "Defines the module name to be Main, or does not have a module declaration"
    ]

]