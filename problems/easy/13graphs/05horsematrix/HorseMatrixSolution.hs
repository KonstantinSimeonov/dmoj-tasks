import Data.List (foldl')
import qualified Data.Set as Set

deltas = [(-2, -1), (-2, 1), (-1, -2), (-1, 2), (1, -2), (1, 2), (2, -1), (2, 1)]

data Queue a = Queue { is :: [a], os :: [a] }
empty (Queue [] []) = True
empty _ = False
deq (Queue [] []) = error "topkek"
deq (Queue is []) = deq (Queue [] $ reverse is)
deq (Queue is (o:os)) = (o, Queue is os)
enq xs (Queue is os) = Queue (reverse xs ++ is) os

solve n (er, ec) = solve'
    where
        isValidMove visited (r, c, _) = 0 <= r && r < n && 0 <= c && c < n && (not $ Set.member (r * n + c) visited)
        solve' :: Queue (Int, Int, Int) -> Set.Set Int -> Int
        solve' nodes visited
            | empty nodes = -1
            | isEnd = steps
            | otherwise = solve' nextNodes nextVisited
            where
                ((r, c, steps), withoutCurrent) = deq nodes
                isEnd = r == er && c == ec
                possibleMoves = filter (isValidMove visited) $ map (\(dr, dc) -> (r + dr, c + dc, steps + 1)) deltas
                nextVisited = foldl' (\m (a, b, _) -> Set.insert (a * n + b) m) visited possibleMoves
                nextNodes = enq possibleMoves withoutCurrent

main = do
    n <- read <$> getLine
    -- read n lines and annotate them with coordinates
    board <- mapM (\r -> zipWith (\c v -> ((r, c), v)) [0..n - 1] .  filter (/= ' ') <$> getLine) [0..n - 1]
    let relevantCells = filter ((/= '-') . snd) . concat $ board
        (visited, (sr, sc), end) = foldl' (foldSpecials n) (Set.empty, undefined, undefined) relevantCells
        answer = solve n end (Queue [] [(sr, sc, 0)]) visited
    
    putStrLn $ if answer /= -1 then show answer else "No"
    where
        foldSpecials n (visited, start, end) (index, value)
            | value == 'x' = let (r, c) = index in (Set.insert (r * n + c) visited, start, end)
            | value == 's' = (visited, index, end)
            | value == 'e' = (visited, start, index)
