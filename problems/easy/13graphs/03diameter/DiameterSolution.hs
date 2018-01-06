{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}

import Data.ByteString.Builder (Builder, char7, intDec, toLazyByteString)
import qualified Data.ByteString.Lazy.Char8 as B8
import qualified Data.Set as Set
import Data.Monoid ((<>))
import Data.Char (ord)
import Data.ByteString (getLine)
import Data.Array (Array, array, accumArray, (!))

buildAdjList :: Int -> [Int] -> Array Int [(Int, Int)]
buildAdjList n xs = accumArray (flip (:)) [] (0, n) $ triples xs []
    where
        triples [] res = res
        triples (x:y:dist:rest) res = let edgeXY = (x, (y, dist))
                                          edgeYX = (y, (x, dist))
                                          in triples rest (edgeXY:edgeYX:res)

data Queue a = Queue {
                ingoing :: [a]
                , outgoing :: [a]
            } deriving Show

enqMany xs (Queue is os) = Queue (reverse xs ++ is) os
deq (Queue [] []) = error "gosho"
deq (Queue is []) = deq (Queue [] $ reverse is)
deq (Queue is (o:os)) = (o, Queue is os)

bfs !node adjList = let start = (node, 0) in bfs' Set.empty (Queue [] [start]) start
    where
        bfs' :: Set.Set Int -> Queue (Int, Int) -> (Int, Int) -> (Int, Int)
        bfs' visited (Queue [] []) !ans = ans
        bfs' visited que !ans = let (curr@(n, dist), rest) = deq que
                                    in if Set.member n visited
                                            then bfs' visited rest ans
                                            else let children = map (\(i, d) -> (i, d + dist)) $ adjList ! n
                                                     newNodes = enqMany children rest
                                                     in bfs' (Set.insert n visited) newNodes (longerEdge curr ans)

longerEdge :: (Int, Int) -> (Int, Int) -> (Int, Int)
longerEdge a b = if snd a < snd b then b else a

parseInt :: B8.ByteString -> Int
parseInt str = parseInt' str 0 where
    parseInt' str !acc
        | B8.null str  = acc
        | otherwise = parseInt' (B8.tail str) $ ord (B8.head str) - 48 + acc * 10

parseIntList :: B8.ByteString -> [Int]
parseIntList = map parseInt . B8.words

solve :: [Int] -> Int
solve (n:triples) = answer
    where
        graph = buildAdjList n triples
        -- pick arbitary node, find the farther node from it using bfs
        (mostDistant, _) = bfs (head triples) graph
        -- find the farthest node from the previously farthest node, counting the distance on the way
        (_, answer) = bfs mostDistant graph

main :: IO ()
main = B8.interact ( toLazyByteString . formatInt . solve . parseIntList ) where formatInt n = intDec n <> char7 '\n'

-- debug code below
tests = [
            "11 2 7 2 1 7 6 5 1 8 2 8 6 8 6 9 10 5 5 9 1 9 0 10 15 3 1 21 6 4 3" -- 54
            , "5 3 4 3 0 3 4 0 2 6 1 4 9" -- 22
            , "16 2 3 92 5 2 10 14 3 42 2 4 26 14 12 50 4 6 93 9 6 24 15 14 9 0 2 95 8 0 90 0 13 60 9 10 59 1 0 66 11 12 7 7 10 35" -- 428
        ]

runZeroTests = B8.putStr. B8.unlines . map (toLazyByteString . intDec . solve . parseIntList) $ tests
