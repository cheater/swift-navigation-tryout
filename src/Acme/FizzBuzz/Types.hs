module Acme.FizzBuzz.Types where

-- |The 'NumberClass' type tells us what sort of number we are dealing with
-- for the purposes of 'FizzBuzz'.
data NumberClass = DivBy3 | DivBy5 | DivBy15  | Prime    | OtherNum Int
  deriving (Eq, Show)

-- |The 'FizzBuzz' type tells us if we Fizz or Buzz.
data FizzBuzz      = Buzz   | Fizz   | FizzBuzz | BuzzFizz | OtherFB  Int
  deriving Eq

ncToFb :: NumberClass -> FizzBuzz
ncToFb x
  | x == DivBy3  = Buzz
  | x == DivBy5  = Fizz
  | x == DivBy15 = FizzBuzz
  | x == Prime   = BuzzFizz

ncToFb (OtherNum n) = OtherFB n

instance Show FizzBuzz where
  show Buzz      = "Buzz"
  show Fizz      = "Fizz"
  show FizzBuzz  = "FizzBuzz"
  show BuzzFizz  = "BuzzFizz"
  show (OtherFB n) = show n
