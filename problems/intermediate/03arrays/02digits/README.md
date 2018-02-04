You are given a matrix of digits. The matrix contains some patterns that form digits. Your task is to find these digits and calculate their sum.

The digit patterns are as follows:

<img src="https://rawgit.com/Minkov/dmoj-tasks/master/intermediate/03arrays/02digits/digit-patterns.png" />

- The one-digit pattern is formed from cells with the digit one
- The nine-digit pattern is formed from cells with the digit nine
- Etc…

The size of the patterns is constant and always has the given form.

# Example:

<img src="media/image1.png" width="428" height="256" />Each digit patterns is formed by the same digit:

The digit patterns are marked in green, red and blue

Four digit patterns are found – twice one-digit, one seven-digit and one four-digit pattern.

The sum is 1 + 1 + 4 + 7 = **13**

# Input

- Read from the standard input
- On the first line you will find the number **N**
  – The number of rows and columns of the matrix

- On the next N lines you will find exactly N digits, separated by a space
  - These are the digits of the matrix

- The input data will always be valid and in the described format. There is no need to check it explicitly.

# Output

- Print to the standard output
- On the single line, print the **sum of all the digit patterns** in the matrix

# Constraints

-   **N** will always be **greater or equal to 5** and **less or equal to 1250**

-   The values in the matrix will always be **digits**

# Sample tests

## Input


```
5
1 1 1 1 1
1 1 1 1 1
1 1 1 1 1
1 1 1 1 1
1 1 1 1 1
```

## Output

```
3
```

## Explanation

- The one-patern is found three times.
- The sum is 1+1+1 = 3


## Input


```
7
9 9 9 2 2 2
9 9 9 2 2 2
9 9 9 2 2 2
9 9 9 2 2 2
9 9 9 2 2 2
9 9 9 2 2 2
```

## Output

```
22
```

## Explanation

- The nine-pattern is found twice and the two-pattern is also found twice
- The sum is 9 + 9 + 2 + 2 = 22

## Input

```
8
3 2 1 1 2 3 0 1
2 1 1 9 7 6 4 0
1 4 1 7 7 7 5 1
2 4 1 4 2 7 1 1
3 4 1 4 7 1 3 1
0 4 4 4 7 4 5 1
5 8 2 4 7 3 2 1
1 2 7 4 9 2 1 8
```

## Output

```
13
```

## Explanation

- In the example above