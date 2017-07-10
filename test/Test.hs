module Main where
import Test.QuickCheck (quickCheck)
import Test.Framework (defaultMain)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Math.Fibonacci (fibFast, fibTable)

main = defaultMain
  [ testProperty "fibFast agrees with fibTable" prop_fibFastFibTable ]

-- |Test 'fibFast' against 'fibTable'
prop_fibFastFibTable :: Int -> Bool
prop_fibFastFibTable i = fibFast k == fibTable k
  where k = i `mod` 1001
