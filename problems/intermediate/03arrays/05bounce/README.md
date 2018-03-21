You are given numbers **N** and **M**. They form a matrix of the powers of 2.

_Example_: N = 3, M = 4

1 2 4 8
2 4 8 16
4 8 16 32

Starting from the top left corner of the matrix, Go with diagonal moves, until you hit a wall. When a wall is hit, change direction. You do this, until the direction cannot be changed, i.e. you hit a corner.

_Example_:

If you have the above matrix, the path will be: `1 4 16 16 4 4 4`

You task is to find the sum of this path.

# Input

Read from the standard input

- On the single line of the input, read the numbers **N** and **M**

# Output

Print to the standard output

- On the single line of the output, print the sum of the path

# Sample tests

## Input

```
3 4
```

## Output

```
49
```
