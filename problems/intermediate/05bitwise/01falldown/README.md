You are given a list of **8** bytes (positive integers in the range \[0…255\]) **n<sub>0</sub>**, **n<sub>1</sub>**, …, **n<sub>7</sub>**. These numbers represent a square grid consisting of **8** lines and **8** columns. Each cell of the grid could either be empty or full. The first line is represented by the bits of **n<sub>0</sub>**, the second – by the bits of **n<sub>1</sub>** and so on, and the last line is represented by the bits of **n<sub>7</sub>**. Each bit with value 1 denotes a full cell and each bit with value 0 denotes an empty cell. The lines are numbered from the first (top) to the last (bottom) with the numbers 0, 1, …, 7. The columns are numbered from right to left with the indices 0, 1, …, 7. 

The figure shows a sample square grid and its representation by a sequence of 8 numbers **n<sub>0</sub>**, **n<sub>1</sub>**, …, **n<sub>7</sub>**:

<img src="https://rawgit.com/Minkov/dmoj-tasks/master/intermediate/05bitwise/01falldown/sample.png" />

Suppose the full cells hold squares which can "fall down" by the influence of the gravity. Each full cell in certain row and column falls down to the lowest row possible but stays in the same column and up from any other full cells on the same column that ware initially down from it. At the figure the "fall down" process is illustrated.

Write a program to calculate how the grid will look like after the "fall down" process is applied.

# Input

- Read from the standard input

- There will be exactly 8 lines each holding the integer numbers **n<sub>0</sub>**, **n<sub>1</sub>**, …, **n<sub>7</sub>**.

- The input data will always be valid and in the format described. There is no need to check it explicitly.

# Output

- The output consists of the numbers **n<sub>0</sub>**, **n<sub>1</sub>**, …, **n<sub>7</sub>** after the "fall down process".

- Ouput should be printed on the console, in exactly 8 lines, each holding a single integer.

# Constraints

-   The numbers **n<sub>0</sub>**, **n<sub>1</sub>**, …, **n<sub>7</sub>** are positive integers between 0 and 255, inclusive.


# Sample tests

## Input

```
0
64
8
8
0
12
224
0
```

## Output

```
0
0
0
0
0
8
72
236
```


## Input

```
255
255
255
255
255
255
255
254
```

## Output

```
254
255
255
255
255
255
255
255
```