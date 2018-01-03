You are given a sequence of **N** positive integer numbers and one binary digit **B (0 or 1).**
Your task is to write a program that finds the number of binary digits (**B**) in each of the **N** numbers in binary numeral system. Example: 20 in the binary numeral system looks like this: 1**0**1**00**. The number of binary digits 0 of the number 20 in the binary numeral system is 3.

# Input

- Read from the standard input

- On the first input line there will be the digit **B.**

- On the second line you must read the number **N**.

- On each of the following **N** lines there is one positive integer number written – the consequent number, whose sum of binary digits **B** we are searching for.

- The input data will always be valid and in the format described. There is no need to check it explicitly.

# Output

- Print on the standard output

- In the output you must have **N** lines
- Each line must have 1 integer number – the number of digits **B** in the binary representation of the given consequent number

# Constraints

-   Number **N** is a positive integer between 1 and 1000, inclusive.

-   Each of the **N** numbers is a positive integer between 1 and 4 000 000 000, inclusive.

-   The digit **B** will be only 0 or 1.


# Sample tests

## Input

```
1
10
1
2
3
4
5
6
7
8
9
10
```

## Output

```
1
1
2
1
2
2
3
1
2
2
```

## Input

```
0
4
20
1337
2147483648
4000000000
```

## Output

```
3
5
31
19
```

## Input

```
0
6
1
4
16
64
256
1024
```

## Output

```
0
2
4
6
8
10
```