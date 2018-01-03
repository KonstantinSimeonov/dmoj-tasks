You are given a number `N`.

You can perform 3 operations with `N`:

- Didive it by 2
  - Only available if `N` is even
- Increment by 1
- Decrement by 1

You task is to calculate the minumum count of operations, the can make `N` equal to 1


# Input

- Read from the standard input
- On the single line read the number `N`

# Output

- Print to the standard output
- On the single line print the minimum count of operations

# Constraints

- 1 <= N <= 2<sup>32</sup>

# Sample tests


## Test 1

- Input

```
15
```

- Output

```
5
```

- Clarification
  - Some of the possible set of operations are
```
15 -> 16 -> 8 -> 4 -> 2 -> 1 (count 5) **best**
15 -> 14 -> 7 -> 8 -> 4 -> 2 -> 1 (count 6)
15 -> 14 -> 7 -> 6 -> 3 -> 2 -> 1 (count 6)
```

