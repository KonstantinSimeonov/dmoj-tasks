<img src="https://raw.githubusercontent.com/TelerikAcademy/Common/master/logos/telerik-header-logo.png"/>

#### _Telerik Academy Season 2016-2017 Autumn / Data Structures and Algorithms Exam - 5 September 2017_
# MinMaxSum

## Description

You are given a sequence of numbers and a number of groups G

You task is to find the MinMaxSum, that can be achieved, by splitting the sequence into exactly G subsequences.

MinMaxSum is the minimal possible sum of the sums of all such subsequences.

## Input

Read from the standard Input

- On the first line is a number `N`
  - The number of following subsequences

- On the next `2*N` lines find exactly `N` couples of lines
  - Each couple has:
    - On the first line of the couple are the numbers `M and G`, separated by a whitespace
      - `M` is the number of numbers in the sequence
      - `G` is the number of groups
    - On the second line of the couple are exactly `M` numbers, separated by a whitespace

## Output

Print to the standard output

- For each couple print the MinMaxSum


## Sample tests

### Input

```
1
5 2
7 2 5 10 8
```

### Output

```
18

```

### Explanation

The possible groups of 2 are:

```
(7) and (2, 5, 10, 8) -> MinMaxSum = 25
(7, 2) and (5, 10, 8) -> MinMaxSum = 23
(7, 2, 5) and (10, 8) -> MinMaxSum = 18
(7, 2, 5, 10) and (8) -> MinMaxSum = 24
