import System.Random

main = do
    n <- fmap read getLine
    str <- sequence $ replicate n getSymbol
    putStrLn str

getSymbol = do
    index <- randomRIO range
    return (symbols !! index)

    where
        symbols = "1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
        range = (0, length symbols - 1)
