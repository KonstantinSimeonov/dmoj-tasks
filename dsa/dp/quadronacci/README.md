# Quadronacci rectangle


## Description

We all know the Fibonacci line, where each number is the sum of the previous two. Well, the Quadronacci line is almost the same, but uses the previous four numbers to calculate. In short, we can define that the n-th number of the line is:

```
Q n = Q n-1 + Q n-2 + Q n-3 + Q n-4
```

Where Q ~ n ~ is the current Quadronacci number (n is the n-toot index
Quadronacci number).

The Quadronacci line can begin with any four integers,
Positive or negative, and proceed according to the defined formula.

On the other hand, the Quadronacci rectangle is something you might expect
- a rectangle (matrix) of numbers contained in Quadronacci
The row. The height of the rectangle is the number of rows in the matrix
The width - the number of columns.

Let ** R ** be the number of rows, and ** C ** - the number of columns. Then the first row of
The rectangle will contain the first ** C ** numbers in the row, the second row will
Contains the following ** C ** numbers from the row, etc.

Your task is to write a program that prints on the console
Quadronacci rectangle given the first four numbers of the row,
The number of rows and the number of columns in the matrix.

## Input

Input data will be read from the console.

** The first four lines ** will contain the ** first four goals
Numbers ** of the Quadronacci line - each number in a different order.

The fifth row will contain the number ** R ** - the number of rows in the rectangle.

The sixth row will contain the number ** C ** - the number of columns in the rectangle.

The input data will always be valid in the format described. Not necessary
Be explicitly checked.

## Output

Output data will be printed on the console.

The output must contain exactly R number of lines containing exactly C of
Number of numbers - the row of Quadronacci, as between every two numbers you need
To have exactly one space.

## Limits

- 1 ≤ ** R ** ≤ 20.
- 4 ≤ ** C ** ≤ 20.
- Each row number can be compiled into a 64-bit integer type.

## Sample tests

| Input                            | Output                                                       |
| -------------------------------- | ------------------------------------------------------------ |
| 1<br/>2<br/>3<br/>4<br/>2<br/>8  | 1 2 3 4 10 19 36 69<br/>134 258 497 958 1847 3560 6862 13227 |
| 5<br/>-5<br/>1<br/>2<br/>3<br/>4 | 5 -5 1 2<br/>3 1 7 13<br/>24 45 89 171                       |
