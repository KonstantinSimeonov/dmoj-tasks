Let `P` be an integer, bigger than `2`.
Integers are written in the vertices of the infinity binary tree in the following way:
- in the root of the tree it is written `1`
- if in any vertex of the tree it is written `X`, therefore its left child contains `P * X` and its right child contains `P * X + 1`
For example, if `P = 3` then the beginning of the tree looks in the following way:

<img src="https://rawgit.com/Minkov/dmoj-tasks/master/intermediate/trees/01prettynumbers/tree.png" />

A number is called **pretty** if it can be presented in a single way as a sum of two different numbers, which appear in the tree vertices.
Write a program, which determines whether the given numbers are **pretty**.

# Input
- Input is read from the console
- **P** is read from the first line
- Several numbers will be given on the second line
  - Separated by spaces
  - Those are the numbers you must check


# Output
- Output should be printed on the console
- On a single line of the standard output for every number the program must write `1` if the number is **pretty** and `0` if it is not.
  - Separated by spaces

# Constraints
- 2 < **P** <= 50
- 0 < **each given number** < 10<sup>18</sup>

# Sample tests

## Input

```
3
7 28 13 9
```

## Output

```
1 1 0 0
```
