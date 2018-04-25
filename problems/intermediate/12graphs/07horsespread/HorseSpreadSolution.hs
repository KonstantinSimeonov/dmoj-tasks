import Data.Array
import Data.Array.IO
import Control.Monad
import Data.Int

import Data.ByteString.Builder (int16Dec, toLazyByteString)
import qualified Data.ByteString.Lazy.Char8 as B8

data Queue a = Queue { ingoing :: [a], outgoing :: [a] } deriving Show

enqMany xs (Queue is os) = Queue (reverse xs ++ is) os
deq (Queue [] []) = error "gosho"
deq (Queue is []) = deq (Queue [] $ reverse is)
deq (Queue is (o:os)) = (o, Queue is os)
empty (Queue [] []) = True
empty _             = False

deltas =
    [ (-2, -1)
    , (-2, 1)
    , (-1, -2)
    , (-1, 2)
    , (1, 2)
    , (1, -2)
    , (2, 1)
    , (2, -1)
    ]

spreadTheHorse :: IOUArray (Int16, Int16) Int16 -> (Int16, Int16) -> (Int16, Int16, Int16) -> IO ()
spreadTheHorse matrix (rows, cols) start = bfs (Queue [] [start])
    where
        isInside (r, c, _) = 0 <= r && r < rows && 0 <= c && c < cols
        bfs :: Queue (Int16, Int16, Int16) -> IO ()
        bfs queue = do
            let ((cr, cc, steps), withoutCurrent) = deq queue
                index = (cr, cc)
            let nextStep = steps + 1
            -- writeArray matrix index nextStep
            let allNeighbors = filter isInside $ map (\(dr, dc) -> (cr + dr, cc + dc, nextStep)) deltas
            asdf <- filterM (\(r, c, _) -> (== 0) <$> readArray matrix (r, c)) allNeighbors
            let newPending = enqMany asdf withoutCurrent
            mapM_ (\(r, c, v) -> writeArray matrix (r, c) v) asdf
            if empty newPending
                then pure ()
                else bfs newPending

main = do
    [n, m, r, c] <- replicateM 4 (read <$> getLine)
    -- [n, m, r, c] <- pure [6, 7, 3, 4]
    let width = 4 + abs (m `div` 2 - c) :: Int16
    -- print (n, width)
    columns <- newArray ((0, 0), (n, width)) 0 :: IO (IOUArray (Int16, Int16) Int16)
    writeArray columns (r, 2) 1
    spreadTheHorse columns (n, width) (r, 2, 1)
    ans <- mapM (\ri -> readArray columns (ri, width - 2)) [0..n - 1]
    -- let ixs = map (\r -> (,) r <$> [0..width - 1]) [0..n - 1]
    -- xs <- mapM (mapM (readArray columns)) $ map (\r -> map (\c -> (r, c)) [0..width - 1]) [0..n - 1] -- [[(1, 2)], [(1, 3)]]
    -- mapM_ print xs
    B8.putStr. B8.unlines . map (toLazyByteString . int16Dec) $ ans
