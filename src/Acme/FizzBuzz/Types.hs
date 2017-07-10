module Acme.FizzBuzz.Types where

data ComplexNumber = DivBy3 | DivBy5 | DivBy15  | Prime    | OtherNum Int
  deriving (Eq, Show)

data FizzBuzz      = Buzz   | Fizz   | FizzBuzz | BuzzFizz | OtherFB  Int
  deriving Eq

instance Show FizzBuzz where
  show Buzz      = "Buzz"
  show Fizz      = "Fizz"
  show FizzBuzz  = "FizzBuzz"
  show BuzzFizz  = "BuzzFizz"
  show (OtherFB n) = show n
