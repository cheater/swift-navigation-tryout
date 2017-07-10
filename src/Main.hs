module Main where

import Acme.FizzBuzz
import Control.Monad (sequence)
import System.Environment (getArgs)
import Text.Read (readMaybe)

main :: IO ()
main = getNum >>= maybeExit printFbs

-- |'getNum' gets the number of FizzBuzz classifications that the user
-- specified should be printed. If there is an error, it returns 'Nothing'.
getNum :: IO (Maybe Int)
getNum = getArgs >>= \args -> case args of
  [] -> do
    putStrLn $ "Please specify the count of Fibonacci numbers to print " ++
      "as the first command-line argument."
    return Nothing
  (x:_) -> case ((readMaybe x) :: Maybe Int) of
    Nothing -> do
      putStrLn $ "Please use an integer as the first command-line " ++
        "argument."
      return Nothing
    Just x -> return $ Just x


maybeExit :: (Int -> IO ()) -> Maybe Int -> IO ()
maybeExit = maybe $ return ()

-- |'printFbs n' will print the FizzBuzz classifications for the first 'n'
-- Fibonacci numbers.
printFbs :: Int -> IO ()
printFbs limit = (sequence $ printFb <$> [0..(limit-1)]) >> return ()
-- we want to have `limit` Fibonacci numbers, and we start counting with 0, so
-- we need to stop counting at limit-1.

-- |'printFb n' prints a single FizzBuzz classification for the 'n'th Fibonacci
-- number.
printFb :: Int -> IO ()
printFb = putStrLn . show . fibFb
