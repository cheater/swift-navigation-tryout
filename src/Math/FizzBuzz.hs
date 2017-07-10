{-|
Module      : Math.FizzBuzz
Description : Math functions for FizzBuzz
License     : MIT
Maintainer  : cheater00@gmail.com

This module contains math functions for the FizzBuzz algorithm that don't
really belong in any other module.
-}
module Math.FizzBuzz (classifyNumber) where

import Acme.FizzBuzz.Types
import Math.NumberTheory.Primes.Testing (isPrime)

dividesBy3 :: Integer -> Bool
dividesBy3 x = (x `mod` 3) == 0

dividesBy5 :: Integer -> Bool
dividesBy5 x = (x `mod` 5) == 0

-- |take an Integer and classify it as a NumberClass.
classifyNumber :: Integer -> NumberClass
classifyNumber x
  |      divBy3  && (not divBy5) = DivBy3
  | (not divBy3) &&      divBy5  = DivBy5
  |      divBy3  &&      divBy5  = DivBy15
  | prime                        = Prime
  | otherwise                    = OtherNum x
  where
    divBy3 = dividesBy3 x
    divBy5 = dividesBy5 x
    prime = isPrime x
