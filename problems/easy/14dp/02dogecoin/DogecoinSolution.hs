{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}

import Data.Int
import qualified Data.Map.Strict as Map
import Data.ByteString.Lazy (ByteString, interact)
import Data.ByteString.Builder (toLazyByteString, intDec)
import qualified Data.ByteString.Lazy.Char8 as B8
import Data.Char (ord)

calc :: Int32 -> [Int32] -> [Int32] -> [Int32]
calc _ [] _ = []
calc _ _ [] = []
calc !prev (x:xs) (y:ys) = let current = y + max prev x
                               in current:calc current xs ys

solve :: Int32 -> Int32 -> Map.Map Int32 Int32 -> Int32
solve !r !c !coins = last $ solve' (fromIntegral 0) (replicate (fromIntegral c) 0)
    where
        indexes = [0..c]
        solve' :: Int32 -> [Int32] -> [Int32]
        solve' !n !row
            | n >= r    = row
            | otherwise = let rowCoins = calc 0 row $! map (\col -> Map.findWithDefault 0 (n * c + col) coins) indexes
                          in solve' (n + 1) rowCoins

packCoords :: Int32 -> [Int32] -> Map.Map Int32 Int32
packCoords c = packCoords' Map.empty where
    packCoords' !acc [] = acc
    packCoords' !acc (x:y:rest) = packCoords' (Map.insertWith (+) (fromIntegral $ x * c + y) 1 acc) rest

parseInt :: B8.ByteString -> Int32
parseInt str = parseInt' str 0 where
    parseInt' str !acc
        | B8.null str  = acc
        | otherwise = parseInt' (B8.tail str) $ fromIntegral (ord (B8.head str)) - 48 + acc * 10

mainByteStr :: ByteString -> ByteString
mainByteStr input = let (n:m:k:rest) = map parseInt $ B8.words input
                        coinMap = packCoords m rest
                        in toLazyByteString $ intDec $ fromIntegral $ solve n m coinMap

main = B8.interact mainByteStr
