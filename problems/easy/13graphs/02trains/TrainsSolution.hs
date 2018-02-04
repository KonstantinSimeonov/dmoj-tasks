{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}

import Data.Int
import Data.List (sort)
import qualified Data.Map.Strict as Map
import Data.ByteString.Lazy (ByteString, interact)
import Data.ByteString.Builder (toLazyByteString, intDec)
import qualified Data.ByteString.Lazy.Char8 as B8
import Data.Char (ord)

parseInt :: B8.ByteString -> Int32
parseInt str = parseInt' str 0
    where
        parseInt' str !acc
            | B8.null str  = acc
            | otherwise = parseInt' (B8.tail str) $ fromIntegral (ord (B8.head str)) - 48 + acc * 10


data MultiSet a = MultiSet 
    { records :: Map.Map a Int32
    , msSize :: !Int32
    }

insert :: Ord a => a -> MultiSet a -> MultiSet a
insert x ms = let newRecords = Map.insertWith (+) x 1 $ records ms
              in MultiSet { records = newRecords, msSize = msSize ms + 1 }

popMax :: Ord a => MultiSet a -> MultiSet a
popMax ms = let newRecords = Map.updateMax (\v -> if v == 1 then Nothing else Just $ v - 1) $ records ms
            in MultiSet { records = newRecords, msSize = msSize ms - 1 }

right :: Ord a => a -> MultiSet a -> MultiSet a
right b ms = MultiSet { records = newRecords, msSize = msSize ms - removedCount }
    where
        (newRecords, removedCount) = getBigger 0 (records ms)

        getBigger !s rs
            | Map.null rs = (rs, s)
            | otherwise = let (first, count) = Map.findMin rs
                          in if first > b then (rs, s) else getBigger (s + count) (Map.deleteMin rs)

emptyMS :: Ord a => MultiSet a
emptyMS = MultiSet { records = Map.empty, msSize = 0 }

solve :: Int32 -> Int32 -> [(Int32, Int32)] -> Int32
solve maxT = solve' emptyMS
    where
        solve' :: MultiSet Int32 -> Int32 -> [(Int32, Int32)] -> Int32
        solve' _ !ans [] = ans
        solve' bag !ans ((s, e):rest) = 
            let passengers       = insert e $ right s bag
                (newBag, newAns) = if msSize passengers > maxT
                                        then (popMax passengers, ans - 1)
                                        else (passengers, ans)
            in solve' newBag newAns rest

pairs :: [(a, a)] -> [a] -> [(a, a)]
pairs acc []       = acc
pairs acc (x:y:xs) = pairs ((x, y):acc) xs

mainByteStr :: ByteString -> ByteString
mainByteStr input = let (n:m:l:travels) = map parseInt $! B8.words input
                    in toLazyByteString $ intDec $ fromIntegral $ solve (fromIntegral m) (fromIntegral n) $ sort $ pairs [] travels

main = B8.interact mainByteStr

-- runZeroTests = (B8.putStrLn . mainByteStr) "5 2 10 2 4 3 7 1 2 1 8 5 9"
