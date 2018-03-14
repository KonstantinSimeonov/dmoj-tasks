{-# LANGUAGE BangPatterns #-}
import Data.Array
import qualified Data.ByteString.Lazy.Char8 as B8
import Data.ByteString.Builder
import Data.Maybe

partialSums :: [Int] -> [Int]
partialSums [] = []
partialSums [x] = [x]
partialSums ((!x):(!y):xs) = x:partialSums ((x + y):xs)

-- find the index of the first value greater than
-- or equal to the provided value
lowerBound :: Array Int Int -> Int -> Int
lowerBound arr value = lb 0 (snd $ bounds arr)
    where
        lb !low !high = let !midIndex = (low + high) `div` 2
                            midValue = arr ! midIndex
                            (newLow, newHigh) = if value <= midValue
                                                    then (low, midIndex) -- if value is to the left, search the left half
                                                    else (midIndex + 1, high) -- if value is to the right, sarch the right half
                        in if low == high
                            then midIndex
                            else lb newLow newHigh

main = do
    [wc:_, ws, qs] <- map readIntList . B8.lines <$> B8.getContents
    let sums = listArray (0, wc) $ partialSums ws
        answers = map (min (wc - 1) . lowerBound sums) qs

    B8.putStrLn . B8.unwords $ map (toLazyByteString . intDec) answers
    where
        readIntList :: B8.ByteString -> [Int]
        readIntList = map (fst . fromMaybe undefined . B8.readInt) . B8.words
