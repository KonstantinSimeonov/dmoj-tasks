<img src="https://raw.githubusercontent.com/TelerikAcademy/Common/master/logos/telerik-header-logo.png"/>

#### _Telerik Academy Season 2016-2017 Autumn / Data Structures and Algorithms Exam - 5 September 2017_
# Medians

## Description

Write a program that supports three operations:

- ADD number
  - Adds a number to a sequence
- FIND
  - Finds the median of the sequence
- EXIT
  - Stops the program

Median is defined as follows:
- If the count of numbers in the sequence is odd:
  - The median is the middle number by value, not average
  - Example: the sequence `5 1 2 3 1` has median `2`
- If the count of numbers in the sequence is even:
  - The median is the average between the two middle values:
  - Example: the sequence `5 1 2 3 1 3` has median `2.5`

## Input

Read from the standard input

- On each of the input, you will find one of the three commands
  - 'ADD number' - perform ADD command
  - 'FIND' - perform 'FIND' command and print the median
  - 'EXIT' - stop reading commands

## Output

Print to the standart output

- Print the median for each `FIND` command

## Constraints

- The commands are always less than 131074
- Each number is always between -2^15 and 2^15

## Sample tests

### Input

```
ADD 5
ADD 1
ADD 2
FIND
ADD 3
FIND
ADD 1
FIND
EXIT
```

### Output
```
2
2.5
2
```

### Input

```
ADD 5
ADD 1
FIND
ADD 2
FIND
ADD 3
ADD 1
FIND
ADD 3
FIND
EXIT
```

### Output
```
3
2
2
2.5
```
