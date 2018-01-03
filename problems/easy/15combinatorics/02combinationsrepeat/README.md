By given **N** and **K**, print all K-combinations of N elements with repetitions.

# Input

- Read from the standard input
- From the first lint, read **N** and **K**, separated by a single space

# Output

- Print on the standard output
- Print all the K-combinations of the numbers between 1 and N
  - Sorted alphabetically as numbers (i.e. 2 is before 11)

# Sample tests

## Input

```
3 2
```

## Output

```
1 1
1 2
1 3
2 2
2 3
3 3
```

## Input

```
4 3
```

## Output

```
1 1 1
1 1 2
1 1 3
1 1 4
1 2 2
1 2 3
1 2 4
1 3 3
1 3 4
1 4 4
2 2 2
2 2 3
2 2 4
2 3 3
2 3 4
2 4 4
3 3 3
3 3 4
3 4 4
4 4 4
```

## Input

```
4 4
```

## Output

```
1 1 1 1
1 1 1 2
1 1 1 3
1 1 1 4
1 1 2 2
1 1 2 3
1 1 2 4
1 1 3 3
1 1 3 4
1 1 4 4
1 2 2 2
1 2 2 3
1 2 2 4
1 2 3 3
1 2 3 4
1 2 4 4
1 3 3 3
1 3 3 4
1 3 4 4
1 4 4 4
2 2 2 2
2 2 2 3
2 2 2 4
2 2 3 3
2 2 3 4
2 2 4 4
2 3 3 3
2 3 3 4
2 3 4 4
2 4 4 4
3 3 3 3
3 3 3 4
3 3 4 4
3 4 4 4
4 4 4 4
```
