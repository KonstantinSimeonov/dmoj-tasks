#!/bin/bash

ghc -O2 -o main.exe ./Diameter.hs

for test_file in $(ls ./test.*.in*); do
	diff -wq <(./main.exe < "$test_file") "${test_file/in/out}" && echo PASSING || echo FAIL
done
