solve ans _ [] = ans
solve ans run (x:xs)
    | next < 0   = solve ans 0 xs
    | ans < next = solve next next xs
    | otherwise  = solve ans next xs
    where
        next = run + x

main = getContents >>= print . solve 0 0 . tail . map read . words
