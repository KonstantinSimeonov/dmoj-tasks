{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE OverloadedStrings #-}

import Data.List
import Debug.Trace
import Data.Int (Int16)
import qualified Data.ByteString.Char8 as B8

solve :: [[Int16]] -> Int16
solve table =
        let
                inf = 9999
                time l1 l2 = if (l1 * l2) > 0 then 2 else 1
                zipper :: Int16 -> (Int16, Int16) -> Int16
                zipper !lv (!uv, !cv) =
                        let
                                fromLeft = if lv == -1 then inf else (abs lv) + time lv cv
                                fromUp   = if uv == -1 then inf else (abs uv) + time uv cv
                                better   = min fromLeft fromUp
                                cell     = if better == inf then 1 else better
                        in if cv > 0 then cell else -cell
                step xs ys = tail $ scanl' zipper (-1) $ zip xs ys
                lastRow = foldl1' step table
        in abs . last $ lastRow

solve1 :: [[Int16]] -> Int16
solve1 = sum . map sum

main = do
        ([nstr]:digits) <- map B8.words  . B8.lines <$> B8.getContents
        let n = read $ B8.unpack nstr
        let table = map (map (\x -> if x == "1" then (-2) else 1)) digits
        let answer = solve $ replicate n (-1) : table
        print answer
