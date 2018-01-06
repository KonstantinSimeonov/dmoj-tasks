import Data.Bits (xor)
import Data.Char (ord)
import Data.ByteString.Builder (integerDec, toLazyByteString)
import Data.ByteString.Lazy.Char8 as B8 hiding (map, foldl1)

parseInt :: B8.ByteString -> Integer
parseInt str = if B8.head str /= '-' then parseInt' str 0 else -(parseInt' (B8.tail str) 0)
    where
        parseInt' str acc
            | B8.null str  = acc
            | otherwise = parseInt' (B8.tail str) $ toInteger (ord $ B8.head str) - 48 + acc * 10

main = B8.interact (toLazyByteString . integerDec . foldl1 xor . map parseInt . Prelude.tail . B8.words)
