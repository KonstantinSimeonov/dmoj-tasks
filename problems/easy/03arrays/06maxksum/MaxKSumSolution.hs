import Data.List

main = do
    (_:k:cifrichki) <- map read . words <$> getContents
    print . foldl1' (+) . take k . sortBy (flip compare) $ cifrichki