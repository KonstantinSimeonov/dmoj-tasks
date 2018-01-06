permutations :: [Int] -> [[Int]]
permutations [] = [[]]
permutations xs = [ x:pxs | x <- xs, pxs <- permutations (filter (/= x) xs) ]

main = do
    n <- read <$> getLine
    putStr . unlines . map (unwords . map show) $ permutations [1..n]