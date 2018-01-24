We have the following operations defined for two-digit numbers: There
are two possible ways of merging two-digit numbers:

1.  Merging `ab` and `cd` produces `bc`

-   `42` merged with `17` produces `21`
-   `17` merged with `42` produces `74`

2.  Squashing `ab` and `cd` produces `a(b+c)d` - the middle digit is the
    sum of `b` and `c`

-   `42` squashed with `17` produces `437`
-   `39` squashed with `57` produces `347` (`9 + 5 = 14`, we use only
    the `4`)

You have a sequence of `N` two-digit numbers. Your task is to merge and
squash each pair of adjacent numbers.

# Input

All input data is read from the standard input (the console)

-   On the first line you will receive an integer `N`
-   On the next `N` lines you will receive `N` two-digit numbers
    -   Each number will be on a separate line

# Output

The output data is printed on the standard output (the console)

-   On the first output line print the merged numbers

    -   There should be `N - 1` of them
    -   Separate them by spaces

-   On the second output line print the squashed numbers

    -   There should be `N - 1` of them
    -   Separate them by spaces

-   *Hint*: You can use `Console.WriteLine(string.Join(" ", array));`

# Constraints

-   2 <= `N` <= 1000
-   Numbers will be consisted of **two non-zero digits**
-   **The input data will always be correct and there is no need to
    check it explicitly**

# Sample Tests

## Input
```
    4
    12
    23
    34
    45
```

## Output
```
    22 33 44
    143 264 385
```

## Input
```
    5
    11
    22
    11
    22
    11
```

## Output 
```
    12 21 12 21
    132 231 132 231
```

## Input
```
    11
    44
    69
    46
    63
    83
    13
    62
    14
    31
    68
    87
```

## Output
```
    46 94 66 38 31 36 21 43 16 88
    409 636 423 613 843 192 634 171 378 667
```

