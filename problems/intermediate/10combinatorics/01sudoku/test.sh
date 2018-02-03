for f in *.in.txt; do
    cat "$f" | ./mainata > omri
    diff -w ./omri "${f/.in./.out.}"
    echo
done