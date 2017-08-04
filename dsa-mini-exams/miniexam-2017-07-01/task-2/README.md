# Swapping

## Description

When you first learned to program, you were learned how to swap numbers. When Steve learned to program, he was able to swap a whole bunch of them.

When Steve raises his hands and says a number **X** all the numbers left and right of **X** swap their places.

_Example:_

```
[a b c] X [d e f]
```

will become:

```
[d e f] X [a b c]
```

You are given the sequence `1, 2, 3, ... N`. Steve will say some numbers. Your task is to write a program that finds the sequence at the end.

## Input
- Input is read from the console
  - A number **N** is read from the first input line
  - Several space separated numbers are read from the second input line
    - those are the numbers which Steve says when raising hands

## Output
- Output should be printed on the console
  - Print the sequence at the end on a single line
    - separate numbers by spaces

## Constraints
- **N** <= 100 000
- **number of times that Steve says something** <= 100 000
- **Time limit**: **0.2s**
- **Memory limit**: **48 MB**

## Sample tests

### Sample test 1

#### Input
```
6
3
```

#### Output
```
4 5 6 3 1 2
```

### Description
```
[1 2] 3 [4 5 6] -> [4 5 6] 3 [1 2]
```

### Sample test 2

#### Input
```
8
5 4 7
```

#### Output
```
8 5 1 2 3 7 4 6
```

### Description
```
[1 2 3 4] 5 [6 7 8] -> [6 7 8] 5 [1 2 3 4]
[6 7 8 5 1 2 3] 4 [] -> [] 4 [6 7 8 5 1 2 3]
[4 6] 7 [8 5 1 2 3] -> [8 5 1 2 3] 7 [4 6]
```

### Sample test 3

#### Input
```
12
11 5 10 6 9 10
```

#### Output
```
9 7 8 10 6 5 12 11 1 2 3 4
```

### Description
```
[1 2 3 4 5 6 7 8 9 10] 11 [12] -> [12] 11 [1 2 3 4 5 6 7 8 9 10]
[12 11 1 2 3 4] 5 [6 7 8 9 10] -> [6 7 8 9 10] 5 [12 11 1 2 3 4]
[6 7 8 9] 10 [5 12 11 1 2 3 4] -> [5 12 11 1 2 3 4] 10 [6 7 8 9]
[5 12 11 1 2 3 4 10] 6 [7 8 9] -> [7 8 9] 6 [5 12 11 1 2 3 4 10]
[7 8] 9 [6 5 12 11 1 2 3 4 10] -> [6 5 12 11 1 2 3 4 10] 9 [7 8]
[6 5 12 11 1 2 3 4] 10 [9 7 8] -> [9 7 8] 10 [6 5 12 11 1 2 3 4]
```
