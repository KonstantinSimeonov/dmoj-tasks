import Data.List
import System.Directory

format cases = unlines $ solve ++ [
            ""
            , "main = do"
            , "    s <- getLine"
            , "    putStr $ solve s"
        ]
        where
            solve = map (\(i, o) -> "solve " ++ show i ++ " = " ++ show o) cases

main = do
    cwd <- getCurrentDirectory
    files <- getDirectoryContents cwd
    let ins = sort $ filter (\x -> elem 'i' x && elem 'x' x) files
    let outs = sort $ filter (\x -> elem 'o' x && elem 'x' x) files
    let pairs = zip ins outs
    print pairs
    cases <- mapM genCase pairs
    writeFile "./sol.hs" $ format cases
    where
        genCase (i, o) = do
            inp <- head . words <$> readFile i
            outp <- head . words <$> readFile o
            return (inp, outp)