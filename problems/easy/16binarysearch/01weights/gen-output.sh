ghc -O2 ./WeightsSolution.hs

for in_t in test.*.in.txt
do
    echo "generating output for $in_t"
    ./WeightsSolution < "$in_t" > "${in_t/.in./.out.}"
done

echo "done"