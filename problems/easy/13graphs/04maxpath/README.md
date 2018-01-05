We are given a tree of **N** nodes, each containing a distinct integer number (between 1 and 2147483640, inclusive) and optionally a set of descendent nodes. Write a program that finds a path from some leaf of the tree to another (different) leaf of the tree with maximal sum of its nodes and prints this sum.

# Input

- Read from the standard input

- The first input line contains **N** - the number of nodes in the tree.

- At the next **N-1** lines there are pairs of numbers in format (p<sub>1</sub> &lt;- p<sub>2</sub>) each meaning that node **p<sub>1</sub>** is parent of the node **p<sub>2</sub>**. See the example bellow.

The input data will always be valid and in the described format. There is no need to check it explicitly.

# Output

- Print on the standard output

- At the only output line you should print the maximal sum of nodes found

# Constraints

- **N** will be between 2 and 3000, inclusive.

# Sample tests

## Input

```
10
(5 <- 11)
(1 <- 8)
(11 <- 3)
(8 <- 7)
(1 <- 5)
(11 <- 2)
(8 <- 6)
(2 <- 15)
(8 <- 4)
```

## Output

```
49
```

## Explanation
 28 10
 29 (5 <- 11)
 30 (1 <- 8)
 31 (11 <- 3)
 32 (8 <- 7)
 33 (1 <- 5)
 34 (11 <- 2)
 35 (8 <- 6)
 36 (2 <- 15)
 37 (8 <- 4)

```
The maximal path is:
7 -> 8 -> 1 -> 5 -> 11 -> 2 -> 15
which is same as:
15 -> 2 -> 11 -> 5 -> 1 -> 8 -> 7
```


<img src="https://raw.githubusercontent.com/Minkov/dmoj-tasks/master/easy/13graphs/04maxpath/tree.png" />
