# K base

Let's consider **K**-based numbers, containing exactly **N** digits. We define a number to be valid if its **K**-based notation doesn't contain two successive zeros. For example:

- 1010230 is a valid 7-digit number
- 1000198 is not a valid number
- 0001235 is not a 7-digit number, it is a 4-digit number

Given two numbers **N** and **K**, you are to calculate the amount of valid **K** based numbers, containing **N** digits.

## Input
- Input is read from the console
  - **N** is given on the first line
  - **K** is given on the second line

## Output
- Output should be printed on the console

## Constraints
- 2 <= **K** <= 10
- 2 <= **N**
- **N** + **K** <= 18
- **Time limit**: **0.02s**
- **Memory limit**: **16 MB**

## Sample tests

### Sample test 1

#### Input
```
2
10
```

#### Output
```
90
```
