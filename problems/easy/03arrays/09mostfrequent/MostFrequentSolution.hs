import Data.Int (Int16)
import Data.ByteString.Lazy (ByteString, interact)
import qualified Data.ByteString.Lazy.Char8 as B8
import Data.Char (ord)
import Data.Array (Array, accumArray, elems)
import Data.List

parseInt :: B8.ByteString -> Int16
parseInt str = parseInt' str 0
    where
        parseInt' str acc
            | B8.null str  = acc
            | otherwise = parseInt' (B8.tail str) $ fromIntegral (ord (B8.head str)) - 48 + acc * 10

mainByteStr :: B8.ByteString -> B8.ByteString
mainByteStr input = format $ show number ++ " (" ++ show times ++ " times)"
    where
        format = B8.pack
        (n:xs) = map parseInt . B8.words $ input
        frequencies = accumArray (+) (0 :: Int16) (0, maximum xs + 1) (zip xs $ repeat 1)
        (times, number) = maximum $ zip (elems frequencies) [0..]

main = B8.interact mainByteStr
