import Control.Monad
import Data.Array.MArray
import Data.Array.IO

knapsack :: Int -> [(Int, Int)] -> Int
knapsack _ [] = 0
knapsack n ((w, c):xs)
        | n <= 0 = 0
        | n >= w = max (c + knapsack (n - w) xs) (knapsack n xs)
        | otherwise = knapsack n xs

for = flip mapM_

knapsackTable :: Int -> [(String, Int, Int)] -> IO (IOArray (Int, Int) ([String], Int))
knapsackTable n xs = do
        let count = length xs
        table <- newArray ((0, 0), (count + 1, n + 1)) ([], 0)
        for [1..count] (\i -> do
                        let (name, w, c) = xs !! (i - 1)
                        for [1..n] (\j -> do
                                        cell <- if j >= w
                                                then do
                                                        (withxs, withv)  <- readArray table (i - 1, j - w)
                                                        (withoutxs, withoutv) <- readArray table (i - 1, j)
                                                        pure $ if (withv + c) > withoutv then (name:withxs, withv + c) else (withoutxs, withoutv)
                                                else readArray table (i - 1, j)
                                        writeArray table (i, j) cell
                                   )
                        )
        pure table

test = [("pizza", 3, 2), ("burger", 8, 12), ("salad", 4, 5), ("candy", 1, 4), ("chicken", 2, 3), ("swine", 8, 13)] :: [(String, Int, Int)]

main = do
        m <- read <$> getLine :: IO Int
        n <- read <$> getLine :: IO Int
        foods <- map ((\[name, w, c] -> (name, read w, read c)) . words) <$> replicateM n getLine :: IO [(String, Int ,Int)]
        table <- knapsackTable m foods
        (names, total) <- readArray table (length foods, m)
        putStr . unlines $ (show total):names

