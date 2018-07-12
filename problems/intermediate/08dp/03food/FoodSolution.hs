import Control.Monad

knapsack :: Int -> [(String, Int, Int)] -> ([String], Int)
knapsack _ [] = ([], 0)
knapsack n ((name, w, c):xs)
        | n <= 0 = ([], 0)
        | n >= w = let (withnames, withv) = knapsack (n - w) xs
                       without@(_, withoutv) = knapsack n xs
                   in if (withv + c) >= withoutv then (name:withnames, withv + c) else without
        | otherwise = knapsack n xs

main = do
        [m, n] <- map read <$> replicateM 2 getLine
        foods <- map ((\[name, w, c] -> (name, read w, read c)) . words) <$> replicateM n getLine
        let (names, total) = knapsack m foods
        putStr . unlines $ (show total) : reverse names

