import Data.Char (isLetter)

main = getLine >>= putStrLn . reverse . filter isLetter
