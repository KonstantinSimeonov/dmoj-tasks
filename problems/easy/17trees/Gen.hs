import System.Random (randomRIO)
import System.IO
import Control.Monad

random = [ (1, 5, 10)
         , (6, 10, 10)
         , (1, 200, 100)
         , (100, 150, 5000)
         ]

crafted = [ [1..100] ++ [1..200] ++ [1..300] ++ [1..100]
          , concatMap (\i -> [i..100]) [1..20]
          , replicate 300 42
          , concatMap (\i -> [i .. i + 30] ++ [i, i - 1 .. i - 20]) [100..200]
          , [1000, 999 .. 1]
          , 42:concatMap (\i -> [i, i - 2, i + 2, i]) [10..20]
          ]

zero = [ [1, 2, 3, 2, 1, 5, 6, 2]
       , [4, 1, 2, 2, 3]
       ] :: [[Int]]

showTest :: [Int] -> String
showTest = unlines . map show

testName isZero i = "test." ++ (if isZero then "000." else "") ++ (if i >= 10 then "0" else "00") ++ show i ++ ".in.txt"

main = do
    randoms <- mapM (\(low, high, count) -> replicateM count $ randomRIO (low, high)) random :: IO [[Int]]
    mapM_ (\(i, test) -> writeFile (testName False i) (showTest test)) $ zip [1..] (randoms ++ crafted)
    mapM_ (\(i, test) -> writeFile (testName True i) (showTest test)) $ zip [1..] zero
  
