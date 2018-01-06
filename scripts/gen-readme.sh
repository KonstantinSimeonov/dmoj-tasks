#!/bin/bash

cd "$(dirname "$0")/.."
readme_path="./README.md"

{
	cat << EOF
Solutions to the more interesting problems from [here](https://github.com/Minkov/dmoj-tasks), mostly in haskell.

Solution this far:
EOF
	find . -name \*Solution.hs | while read file; do
		fn="$(basename "$file")"
		echo "- [${fn%Solution.hs}]($file)"
	done

} > "$readme_path"