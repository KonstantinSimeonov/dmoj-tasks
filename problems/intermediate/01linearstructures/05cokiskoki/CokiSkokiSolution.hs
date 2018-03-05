-- import Data.Array

-- main = do
--     (n:xs) <- map read . words <$> getContents
--     let buildingsArray = listArray (0, n) xs
--         answers = map (getJumps n buildingsArray) $ [0..n - 1]

--     print $ maximum answers
--     putStrLn $ unwords $ map show answers
--     where
--         getJumps n buildings s = getJumps' s s
--             where
--                 getJumps' i j
--                     | j >= n                        = 0
--                     | buildings ! i < buildings ! j = 1 + getJumps' j (j + 1)
--                     | otherwise                     = getJumps' i (j + 1)                    = getJumps' i (j + 1)
import Data.List
main = getLine >>= (\line -> print $ foldl' (*) 1 [1..read line])