import Data.Array
import qualified Data.ByteString.Lazy.Char8 as B8
import Data.ByteString.Builder
import Data.Maybe

partialSums :: [Int] -> [Int]
partialSums [] = []
partialSums [x] = [x]
partialSums (x:y:xs) = x:partialSums ((x + y):xs)

lowerBound :: Array Int Int -> Int -> Int
lowerBound arr v = lb 0 (snd $ bounds arr)
    where
        lb low high = let mid = (low + high) `div` 2
                          midv = arr ! mid
                          (newLow, newHigh) = if v <= midv then (low, mid) else (mid + 1, high)
                      in if low == high
                            then mid
                            else lb newLow newHigh

main = do
    [wc:_, ws, qs] <- map readIntList . B8.lines <$> B8.getContents
    let sums = listArray (0, wc) $ partialSums ws
        answers = map (min (wc - 1) . lowerBound sums) qs

    B8.putStrLn . B8.unwords $ map (toLazyByteString . intDec) answers
    where
        readIntList :: B8.ByteString -> [Int]
        readIntList = map (fst . fromMaybe undefined . B8.readInt) . B8.words