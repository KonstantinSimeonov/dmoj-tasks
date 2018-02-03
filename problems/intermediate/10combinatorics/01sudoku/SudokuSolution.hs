{-# LANGUAGE FlexibleContexts #-}
import Data.List
import Data.Array.IO
import Data.Char (ord, chr)
import Control.Monad
import Data.Bits

parseDigit '-' = 0
parseDigit c = ord c - 48

orIO :: [IO Bool] -> IO Bool
orIO [] = return False
orIO (b:bs) = b >>= \val -> if val then return True else orIO bs

solve _ [] = return True
solve sudoku (idx:idxs) = do
                        cell <- readArray sudoku idx
                        if cell > 0
                            then solve sudoku idxs
                            else do isSolved <- orIO $ map tryDigit [1..9]
                                    unless isSolved $ writeArray sudoku idx 0
                                    return isSolved
    where

        tryDigit x = do
                gosho <- not <$> checkCell x
                if gosho then do writeArray sudoku idx x
                                 solve sudoku idxs
                         else return False

        checkCell digit = orIO $ map (\i -> (== digit) <$> readArray sudoku i) indices

        indices = let (r, c) = idx
                      r' = r - r `mod` 3
                      c' = c - c `mod` 3
                      row = map ((,) r) [0..8]
                      col = map (\ri -> (ri, c)) [0..8]
                      sqr = (,) <$> [r'..r'+2] <*> [c'..c'+2]
                  in row ++ col ++ sqr

test :: IO String
test = return "53--7----\n6--195---\n-98----6-\n8---6---3\n4--8-3--1\n7---2---6\n-6----28-\n---419--5\n----8--79"

main = do
    inputRows <- replicateM 9 (map parseDigit <$> getLine)
    let input = concat inputRows
    sudoku <- newListArray ((0, 0), (8, 8)) input :: IO (IOUArray (Int, Int) Int)
    rset <- newListArray (0, 8) $ map (foldl' setBit 0) inputRows :: IO (IOUArray Int Int)
    cset <- newListArray (0, 8) $ map (foldl' setBit 0) $ transpose inputRows :: IO (IOUArray Int Int)
    let coos = [ (,) <$> [r'..r'+2] <*> [c'..c'+2] | r' <- [0, 3, 6], c' <- [0, 3, 6]]
    squares <- mapM (mapM (readArray sudoku)) coos
    sqrset <- newListArray (0, 8) $ map (foldl1' setBit) squares :: IO (IOUArray Int Int)
    solved <- solve sudoku ((,) <$> [0..8] <*> [0..8])
    print solved
    result <- getElems sudoku
    print result
