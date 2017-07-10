{-|
Module      : Acme.FizzBuzz
Description : Utility functions for FizzBuzz
License     : MIT
Maintainer  : cheater00@gmail.com
-}
module Acme.FizzBuzz where

import Math.Fibonacci (fibFast)
import Math.FizzBuzz (classifyNumber)
import Acme.FizzBuzz.Types

-- |'fibFb' takes an index into the Fibonacci numbers, and returns the correct
-- FizzBuzz classification for it.
fibFb :: Int -> FizzBuzz
fibFb = ncToFb . classifyNumber . fibFast
