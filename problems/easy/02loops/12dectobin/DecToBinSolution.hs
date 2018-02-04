toBinary 0 = "0"
toBinary 1 = "1"
toBinary n = let bit  = n `mod` 2
                 rest = n `div` 2
             in toBinary rest ++ show bit

main = getLine >>= (putStrLn . toBinary . read)
