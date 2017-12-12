You are given a valid mathematical expression.

Extract the valid expressions, between brackets.


# Input

- Read from the standard input
- On the single line of the input, find the expression

# Output

- Print to the standard output
- Print all valid expressions between brackets, each on a separate line
  - Order them by appearance of closing bracket

# Sample Tests

## Input

```
5 * (123 * (1 + 3) + ((4 - 3) / 6))
```

## Output

```
(1 + 3)
(4 - 3)
((4 - 3) / 6)
(123 * (1 + 3) + ((4 - 3) / 6))
```

