#!/usr/bin/env stack
-- stack --resolver lts-10.8 script

import System.IO
import System.Process
import Control.Monad.Random
import Data.List (foldl1')

uniformWeights :: (MonadRandom m) => m [Int]
uniformWeights = getRandomRs (0, maxWeight)

name n = "test." ++ (if n >= 10 then "0" else "00") ++ show n ++ ".in.txt"

zeroTests = [ ("4 3\n1 8 4 2\n5 9 20", "test.000.001.in.txt")
            , ("5 4\n1 2 3 4 5\n2 3 4 5", "test.000.002.in.txt")
            ]

testCases :: [(Int, Int)]
testCases = [ (5, 2)
            , (100, 10)
            , (100000, 15)
            , (40000, 500)
            , (100000, 50000)
            , (80000, 80000)
            , (50000, 40000)
            , (40000, 80000)
            , (60000, 160000)
            , (100000, 150000)
            , (200000, 200000)
            ]

maxWeight = 50
maxWeightsCount = maximum . map fst $ testCases

main = do
    testInputs <- mapM (\(ws, qs) -> do
                            weights <- take ws <$> uniformWeights
                            let totalWeight = foldl1' (+) weights
                                uniformQueries = getRandomRs (1, totalWeight + 100)
                            queries <- take qs <$> uniformQueries
                            pure [[ws, qs], weights, queries]
                       ) testCases
    let tests = zeroTests ++ zip (map showList testInputs) (map name [1..])
    mapM_ (\(testBody, testName) -> writeFile ("./" ++ testName) testBody >> putStrLn ("wrote " ++ testName)) tests
    where
        showList :: [[Int]] -> String
        showList = unlines . map (unwords . map show)
        manyRandom :: Int -> (Int, Int) -> IO [Int]
        manyRandom n range = sequence $ replicate n $ randomRIO range
