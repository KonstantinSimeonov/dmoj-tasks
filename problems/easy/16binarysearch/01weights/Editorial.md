A naive solution to the problem would be to read the weights into an array and perform a sequential search for every query. The search would stop when the weight becomes at least the amount specified in the current query. If there are **N** weights and **P** queries, the worst-case complexity of the algorithm equals __O(N * P)__, which is not ideal for big **N** and **P**. Example of the algorithm:

```
weights: 2 1 4 5 1 8 4
query: 16
check 0 (2), then 1 (2 + 1 = 3), then 2 (2 + 1 + 4 = 7),
then 3 (2 + 1 + 4 + 5 = 12), then 4 (13),
then 5 (21) which is finally greater than 16
```

A solution with better complexity can be based on the famous binary search algorithm, which has **O(logn)** worst case complexity. If we calculate the total weight at every index (i.e. calculate the prefix sums), the resulting sequence will be strictly increasing (sorted in ascending order). When searching for a total weight of at least **W**, this allows us to find the first index where the total weight is at least **W** by using binary search algorithm. This approach would result in a worst-case complexity of __O(P * logn)__, which is significantly faster for a large number of weights. Example:

```
weights: 2 1 4 5 1 8 4
prefix sums: 2 3 7 12 13 21 25
query: 16
check 3 (12), then 5 (21) which is greater than 16
```

The problem also has another possible bottleneck - large **N** and/or **P** would mean that large amount of I/O needs to be done. Various I/O optimizations could be applied depending on the language of choice, such as:
- Since the input contains only valid natural numbers, a lightweight natural number parsing implementation could be used in place of the standard one (which most probably performs unnecessary validations).
- For .NET, `StringBuilder` could be used to accumulate the output, instead of making many calls to `Console.Write`.
- For C++, the std streams could be untied from the C streams with `std::cin.tie(0); std::ios::sync_with_stdio(0);`.
- For Haskell, lazy `ByteString` I/O would yield better performance in comparison with the default linked list based I/O.

## Sample naive C++ solution
```cpp
#include <iostream>
#include <vector>

int main() {
    std::cin.tie(0);
    std::ios::sync_with_stdio(0);
    std::size_t n, p;
    std::cin >> n >> p;

    std::vector<std::size_t> ws(n);
    std::cin >> ws[0];
    for(std::size_t i = 1; i < n; ++i) {
        std::cin >> ws[i];
        ws[i] += ws[i - 1];
    }

    // sequential search
    for(std::size_t i = 0; i < p; ++i) {
        std::size_t q;
        std::cin >> q;

        std::size_t j = 0;
        while(j < n && ws[j] < q)
            ++j;

        std::cout << (j - (j >= n)) << ' ';
    }

    std::cout << std::endl;
}
```

## Sample Haskell solution using lower bound (via binary search algorithm)
```hs
import Data.Array
import Data.Maybe
import Data.ByteString.Builder
import qualified Data.ByteString.Lazy.Char8 as B8

partialSums :: [Int] -> [Int]
partialSums [] = []
partialSums [x] = [x]
partialSums (x:y:xs) = x:partialSums ((x + y):xs)

-- find the index of the first value greater than
-- or equal to the provided value
lowerBound :: Array Int Int -> Int -> Int
lowerBound arr value = lb 0 (snd $ bounds arr)
    where
        lb low high = let midIndex = (low + high) `div` 2
                          midValue = arr ! midIndex
                          (newLow, newHigh) = if value <= midValue
                                                    then (low, midIndex) -- if value is to the left, search the left half
                                                    else (midIndex + 1, high) -- if value is to the right, sarch the right half
                      in if low == high
                            then midIndex
                            else lb newLow newHigh

main = do
    [wc:_, ws, qs] <- map readIntList . B8.lines <$> B8.getContents
    let sums = listArray (0, wc) $ partialSums ws
        answers = map (min (wc - 1) . lowerBound sums) qs

    B8.putStrLn . B8.unwords $ map (toLazyByteString . intDec) answers
    where
        readIntList :: B8.ByteString -> [Int]
        readIntList = map (fst . fromMaybe undefined . B8.readInt) . B8.words
```
