

module Smol.Tokens (

) where

type TokenStream =
  [TokenTree]

data TokenTree =
    Keyword Keyword         -- Reserved Keyword
  | Literal Literal         -- Constant value
  | Ident String            -- Identifier (Not a keyowrd, not a constant)
  | Operator String         -- Binary/Unary operators and other punctuation
  | Group Char TokenStream  -- Matched group; the second component must be
                            --      either '(' or '{'
  deriving Show

data Keyword =
    KComment String
  | KFunction
  deriving Show

data Literal =
    LBool Bool
  | LInt Int
  deriving Show