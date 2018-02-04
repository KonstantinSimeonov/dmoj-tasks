You know the horse Koci? He likes to iterate matrices.

Since he wants to be more than a regular horse, he iterates the matrices using the moves of the knights in chess as follows:

1. At each turn, he tries to jump to the topmost, leftmost cell of the matrix
2. If all the 8 positions are taken (he already jumped there), he restarts him jumping from the leftmost, topmost free cell
3. At each turn he leaves a number, to indicate he has been there.

By given the size of the matrix, print the cells of Koci.

# Input

Read from the standard input

- On the single line of the input, find the number **N**
  - The size of the matrix

# Output

Print to the standard output

- On **N** lines, print **N** cells with the numbers of Koci's iteration

# Sample tests

## Input

```
4
```

## Output

```
1 4 7 10
8 11 2 5
3 6 9 12
14 13 15 16
```

## Input


```
5
```

## Output

```
1 8 5 13 3
6 14 2 9 12
18 10 7 4 20
15 22 19 11 17
23 24 16 21 25
```

## Input

```
3
```

## Output

```
1 4 7
6 9 2
3 8 5
```
