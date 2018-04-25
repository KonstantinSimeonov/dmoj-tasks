{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}
import qualified Data.Map as M
import qualified Data.ByteString.Char8 as B8
import qualified Data.ByteString.Builder as C8
import qualified Data.ByteString.Lazy as B8Lazy
import Data.Maybe (fromMaybe)
import Data.List (sortBy, concat, foldl1')
import Data.Monoid ((<>))

compareUnits (n1, _, p1) (n2, _, p2) = let powerCmp = compare p2 p1
                                       in if powerCmp == EQ
                                          then compare n1 n2
                                          else powerCmp

readInput = do
    line <- B8.getLine
    if line /= "end"
        then do
            rest <- readInput
            pure (line:rest)
        else pure []

type Unit = (B8.ByteString, B8.ByteString, Int)

emptyBuilder = C8.byteString ""
newLine = C8.byteString "\n"
listToBuilder = foldl1' (<>) . map C8.byteString

showUnit :: Unit -> C8.Builder
showUnit (!name, !kind, !power) = (C8.byteString name <> "[" <> C8.byteString kind <> "](") <> C8.intDec power <> ")"
start = C8.byteString "RESULT: "
showUnits :: [Unit] -> C8.Builder
showUnits [] = start
showUnits xs = start <> (foldl1' (\m c -> m <> sep <> c) $ map showUnit xs)
                    where
                        sep = C8.byteString ", "

-- solve :: M.Map B8.ByteString Unit -> M.Map B8.ByteString (M.Map B8.ByteString Unit) -> M.Map Int (M.Map B8.ByteString Unit) -> [B8.ByteString] -> C8.Builder
solve _ _ _ [] = emptyBuilder
solve
    byName
    byKind
    byPower
    (l:ls) = let stuff = case B8.words l of
                   ["add", name, kind, power]
                       -> let record = (name, kind, powerInt)
                              powerInt = maybe 0 fst $ B8.readInt power
                          in if M.member name byName
                             then (byName, byKind, byPower, "FAIL: " <> C8.byteString name <> " already exists!")
                             else ( M.insert name record byName
                                  , M.insertWith M.union kind (M.fromList [(name, record)]) byKind
                                  , M.insertWith M.union powerInt (M.fromList [(name, record)]) byPower
                                  , "SUCCESS: " <> C8.byteString name <> " added!"
                                  )
                   ["remove", name]
                       -> let unit = M.lookup name byName
                          in case unit of
                              Nothing -> (byName, byKind, byPower, "FAIL: " <> C8.byteString name <> " could not be found!")
                              Just (_, kind, power) -> ( M.delete name byName
                                                       , M.adjust (M.delete name) kind byKind
                                                       , M.adjust (M.delete name) power byPower
                                                       , "SUCCESS: " <> C8.byteString name <> " removed!"
                                                       )
                   ["find", kind]
                       -> let kinded = take 10 $ sortBy compareUnits $ M.elems $ M.findWithDefault M.empty kind byKind
                          in (byName, byKind, byPower, showUnits kinded)
                   ["power", n]
                       -> let !amount = maybe 0 fst $ B8.readInt n
                              result = take amount . map snd . concatMap (M.toAscList . snd) . M.toDescList $ byPower
                          in (byName, byKind, byPower, showUnits result)
                 (!newByName, !newByKind, !newByPower, output) = stuff
                 in output <> newLine <> solve newByName newByKind newByPower ls

main = do
    lines <- readInput
    let ans = solve M.empty M.empty M.empty lines
    B8Lazy.putStr $ C8.toLazyByteString ans