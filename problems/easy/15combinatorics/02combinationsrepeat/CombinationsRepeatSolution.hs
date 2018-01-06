combinations :: Int -> Int -> Int -> [[Int]]
combinations _ 0 _ = [[]]
combinations n k c = [ current:rest | current <- [c..n], rest <- combinations n (k - 1) current ]

main = do
    (n:k:_) <- (map read . words) <$> getLine
    putStr . unlines . map (unwords . map show) $ combinations n k 1