module Acme.FizzBuzz where

import Math.Fibonacci (fib_fast)
import Math.FizzBuzz (classifyNumber)
import Acme.FizzBuzz.Types

-- |'fibFb' takes an index into the Fibonacci numbers, and returns the correct
-- FizzBuzz classification for it.
fibFb :: Int -> FizzBuzz
fibFb = ncToFb . classifyNumber . fib_fast
