You are given the following mathematical expression:

<img src="https://rawgit.com/Minkov/dmoj-tasks/master/basics/11math/01mathexp/mathexp.png" />

The **sin(x)** is a trigonometric function that returns the sine from the angle **x** (measured in radians)**.**

The **mod** operator finds the remainder of division of one number by another.

Here are some examples for how the **mod** operator should work:
-   5 mod 2 = 1
-   5.99 mod 3 = 2
-   6 mod 3 = 0

Your task is to write a computer program that calculates the result from the shown mathematical expression, depending on the values of the variables **N**, **M** and **P**.

# Input

- Read from the standard input

- The input consists of exactly 3 lines. In each line you consequently enter the variables **N**, **M** and **P**.

- The separator between the integer and the fractional part of the number is “.” (dot).

- The number of digits that follow the decimal point will not be more than 6.

- The input data will always be valid and in the format described. There is no need to check it explicitly.

# Output

- Print to the standard output

- There must be only one line, showing the result from the mathematical expression.

- The result must show exactly 6 digits after the “.” (decimal point).

# Constraints

-   The numbers **N, M** and **P** are fractional numbers.
-   **N, M** and **P** will be between -10 000 000 and 10 000 000, inclusive.
-   The numbers **M** and **P** will always have values other than 0
-   It is guaranteed that none of the combinations of the numbers **N, M** and **P** will lead to dividing by zero.


# Sample tests

## Input

```
1
2
3
```

## Output

```
-2.570352
```

## Input

```
0.1234
1.2345
2.3456
```

## Output

```
-3.596568
```

## Input

```
0.123456
1.234567
2.345678
```

## Output

```
-3.596421
```
