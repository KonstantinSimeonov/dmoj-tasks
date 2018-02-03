import Data.List (sortBy, sort)

tests :: [IO String]
tests = map return [
        "14 2 1 2 4 3 5 2 6"
        , "10 1 1 1 1 1 1 1 1 1 11"
    ]

sums maxSum = sums' 0
    where
        sums' acc []     = acc == maxSum
        sums' acc (x:xs) = let nextSum = acc + x
                               without = sums' acc xs
                           in if nextSum > maxSum
                                then without
                                else without || sums' nextSum xs

main = do
    (s:ns) <- map read . words <$> getContents
    let sorted = sort ns
        possible = sums s sorted
    putStrLn $ if possible then "yes" else "no"

