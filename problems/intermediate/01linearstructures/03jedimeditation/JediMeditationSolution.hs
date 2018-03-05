{-# LANGUAGE OverloadedStrings #-}
import qualified Data.ByteString.Char8 as B8

solve xs = solve' [] [] [] xs
    where
        solve' ms ks ps (x:xs)
            | null xs     = map reverse [ms, ks, ps]
            | rank == 'M' = solve' (x:ms) ks ps xs
            | rank == 'K' = solve' ms (x:ks) ps xs
            | rank == 'P' = solve' ms ks (x:ps) xs
            where
                rank = B8.head x

main = do
    (_:jedi) <- B8.split ' ' <$> B8.getContents
    print $ solve jedi
    mapM_ (B8.putStr . B8.unwords) $ solve jedi