#!/bin/bash

problem_name=$1
problem_solution_file=$(find .. -name "${problem_name}Solution.hs")
problem_dir=$(dirname $problem_solution_file)

ghc -O2 -rtsopts -o ./main.exe "$problem_solution_file"
for test_file in "$problem_dir"/test.*.in*; do
	stdout_file="$(mktemp)"
	stderr_file="$(mktemp)"

	./main.exe +RTS -sstderr < "$test_file" > "$stdout_file" 2> "$stderr_file"

	memory_usage=$(cat "$stderr_file" | egrep -oi '[0-9]+ MB total memory' | head -n 1 | egrep -oi '[0-9]+ MB')
	running_time=$(cat "$stderr_file" | egrep -oi 'Total\s+time\s+[0-9]+\.[0-9]+' | tail -n 1 | egrep -o '[0-9]+.[0-9]+')
	stats="\033[33;1;1m${memory_usage} \033[34;1;1m${running_time}s"

	diff -wqB "$stdout_file" "${test_file/.in./.out.}"

	if [[ $? == 0 ]]; then
		echo -e "\033[32;1;1mPASSING ${stats}\033[0m"
	else
		echo -e "\033[31;1;1mFAILING ${stats}\033[0m"
	fi
done
