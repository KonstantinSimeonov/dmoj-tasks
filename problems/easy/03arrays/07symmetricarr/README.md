An symmetric array is an array, where the elements are equal at indices:
- 0 and len - 1
- 1 and len - 2
- 2 and len - 3
- 3 and len - 4
- etc..
  
You are given some arrays of numbers.

Check if they are symmetric.

# Input

Read from the standard input

- On the first line, read the number **N**
  - The number of arrays to follow
- On the **N** lines, read the elements of each array
  - Separated by a white space

# Output

Print to the standard output

- For each of the arrays, print "Yes" or "No"

# Sample tests

## Input

```
4
1 2 3 2 1
2 1
1 2 2 1
4
```

## Output

```
Yes
No
Yes
Yes
```
