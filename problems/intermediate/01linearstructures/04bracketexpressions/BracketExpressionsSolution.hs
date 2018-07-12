{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}

import Data.Maybe
import qualified Data.ByteString.Char8 as B8

solve :: B8.ByteString -> [B8.ByteString]
solve expr =
        let
        len = B8.length expr

        solve' :: Int -> [B8.ByteString] -> (Int, [B8.ByteString])
        solve' !ptr (a1:acc)
                | len == ptr                = (ptr, a1:acc)
                | B8.index expr ptr == '('  = let (newPtr, innerAcc) = solve' (ptr + 1) [B8.empty]
                                                  !newAcc = [B8.append a1 $ head innerAcc] ++ innerAcc ++ acc
                                              in  solve' (newPtr + 1) newAcc
                | B8.index expr ptr == ')'  = let !formatted = B8.concat ["(", a1, ")"]
                                              in  (ptr, formatted:acc)
                | otherwise                 = let slice = B8.drop ptr expr
                                                  nextBracketIndex = fromMaybe (len - ptr) $ B8.findIndex (\c -> c == '(' || c == ')') slice
                                                  newA1 = B8.append a1 $ B8.take nextBracketIndex slice
                                              in solve' (ptr + nextBracketIndex) (newA1:acc)

        loop :: (Int, [B8.ByteString]) -> [B8.ByteString]
        loop (!ptr, ans)
                | len == ptr               = ans
                | B8.index expr ptr /= '(' = loop (ptr + 1, ans)
                | otherwise                = let (newPtr, newAns) = solve' ptr ans in loop (newPtr, newAns)

        in loop (0, [B8.empty])

main = do
        expr <- B8.getLine
        mapM_ B8.putStrLn . reverse . tail . solve $ expr
