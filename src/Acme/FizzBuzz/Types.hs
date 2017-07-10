{-|
Module      : Acme.FizzBuzz.Types
Description : Types and related functions for FizzBuzz
License     : MIT
Maintainer  : cheater00@gmail.com

This module holds the types used to classify numbers in the FizzBuzz program.
There are two types that are isomorphic. 'NumberClass' exists because it's
easier to reason about as it uses a clear naming scheme. The transofmration
between them ('ncToFb') is straightforward. 'FizzBuzz' is what gets the show
instance and that one is trivial as well. This distribution of responsibilities
into several layers made the program much easier to write and reason about.
-}
module Acme.FizzBuzz.Types where

-- |The 'NumberClass' type tells us what sort of number we are dealing with
-- for the purposes of 'FizzBuzz'.
data NumberClass = DivBy3 | DivBy5 | DivBy15  | Prime    | OtherNum Integer
  deriving (Eq, Show)

-- |The 'FizzBuzz' type tells us if we Fizz or Buzz.
data FizzBuzz    = Buzz   | Fizz   | FizzBuzz | BuzzFizz | OtherFB  Integer
  deriving Eq

-- |transform a value of type 'NumberClass' to the appropriate 'FizzBuzz' value
ncToFb :: NumberClass -> FizzBuzz
ncToFb x
  | x == DivBy3  = Buzz
  | x == DivBy5  = Fizz
  | x == DivBy15 = FizzBuzz
  | x == Prime   = BuzzFizz
ncToFb (OtherNum n) = OtherFB n

-- |Show instance for 'FizzBuzz'. Trivial except OtherFB n gets just shown as n.
instance Show FizzBuzz where
  show Buzz      = "Buzz"
  show Fizz      = "Fizz"
  show FizzBuzz  = "FizzBuzz"
  show BuzzFizz  = "BuzzFizz"
  show (OtherFB n) = show n
