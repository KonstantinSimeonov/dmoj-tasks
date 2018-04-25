{-# LANGUAGE BangPatterns #-}
import qualified Data.ByteString.Char8 as B8
import Data.Maybe
import Control.Monad
import Data.Char (ord)

getInt :: B8.ByteString -> Int
getInt str = parseInt' str 0
    where
        parseInt' str !acc
            | B8.null str  = acc
            | otherwise = parseInt' (B8.tail str) $ ord (B8.head str) - 48 + acc * 10

fits :: Int -> Int -> [Int] -> Bool
fits !left !size [] = left <= 0
fits !left !size (t:ts) = left <= 0 || fits (left - t `div` size) size ts

main = do
    n <- getInt <$> B8.getLine
    m <- getInt <$> B8.getLine
    tubes <- replicateM n (getInt <$> B8.getLine)
    print $ search m 1 (maximum tubes + 1) tubes
    where
        search :: Int -> Int -> Int -> [Int] -> Int
        search m !l !h tubes  = search' l h
            where search' !low !high = if low == high
                                       then low - 1
                                       else let mid = (low + high) `div` 2
                                            in if fits m mid tubes
                                               then search m (mid + 1) high tubes
                                               else search m low mid tubes
