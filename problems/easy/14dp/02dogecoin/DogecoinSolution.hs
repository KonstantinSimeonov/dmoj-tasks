{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}

import Data.Int (Int32, Int16)
import Data.ByteString.Lazy (ByteString, interact)
import Data.ByteString.Builder (toLazyByteString, intDec)
import qualified Data.ByteString.Lazy.Char8 as B8
import Data.Char (ord)
import Data.Array (Array, accumArray, (!))

packCoords :: Int16 -> Int16 -> [Int16] -> Array (Int16, Int16) Int32
packCoords !n !m = accumArray (+) 0 ((0, 0), (n, m)) . pairs []
    where
        pairs acc []         = acc
        pairs acc (x:y:rest) = pairs (((x, y), 1):acc) rest

solve !n !m coins = last $ solve' (replicate (fromIntegral m) 0) 0 where
    calcRow !prev [] _ _       = []
    calcRow !prev (p:ps) !r !c = let current = (coins ! (r, c)) + max p prev
                                     in current:calcRow current ps r (c + 1)
    solve' prevRow r
        | r == n    = prevRow
        | otherwise = let nextRow = calcRow 0 prevRow r 0 in solve' nextRow (r + 1)

parseInt :: B8.ByteString -> Int16
parseInt str = parseInt' str 0 where
    parseInt' str !acc
        | B8.null str  = acc
        | otherwise = parseInt' (B8.tail str) $ fromIntegral (ord (B8.head str)) - 48 + acc * 10

mainByteStr :: B8.ByteString -> B8.ByteString
mainByteStr input = let (n:m:k:coinCoords) = map parseInt $ B8.words input
                        coinMap = packCoords n m coinCoords
                        in toLazyByteString $ intDec $ fromIntegral $ solve n m coinMap

-- tests = [
--             "4 5 7 1 4 0 3 1 2 2 1 3 1 1 2 2 4" :: B8.ByteString
--             , "10 10 11 0 0 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 8 9 9 9"
--             , "4 4 11 1 1 2 1 1 2 2 1 3 3 0 3 3 0 3 1 3 3 1 1 1 0"
--         ]

-- runZeroTests = mapM_ (B8.putStrLn . mainByteStr) tests
main = B8.interact mainByteStr
