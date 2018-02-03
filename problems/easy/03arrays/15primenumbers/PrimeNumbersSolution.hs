isPrime n
    | n < 2     = False
    | n == 2    = True
    | otherwise = all (\d -> n `mod` d /= 0) possibleDivisors
        where
            possibleDivisors = 2:[3, 5..(floor . sqrt . fromIntegral) n]

main = do
    n <- fmap read getLine
    let oddN = n - if odd n then 0 else 1
        candidates = [oddN, oddN - 2..2]
        answer = head $ filter isPrime candidates
    print answer
