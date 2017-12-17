# Frames


## Description

We are given **N rectangular frames** of different sizes (duplicates are allowed). Write a program to **find all unique ways we can reorder these111 frames** by exchanging their order and flipping them.


For example, if we have 3 frames of sizes (2, 3), (2, 2) and (3, 2), we can reorder them in the following 12 unique ways:

  -------------------------- -------------------------- -------------------------- --------------------------
  (2, 2) | (2, 3) | (2, 3)   (2, 2) | (2, 3) | (3, 2)   (2, 2) | (3, 2) | (2, 3)   (2, 2) | (3, 2) | (3, 2)
  (2, 3) | (2, 2) | (2, 3)   (2, 3) | (2, 2) | (3, 2)   (2, 3) | (2, 3) | (2, 2)   (2, 3) | (3, 2) | (2, 2)
  (3, 2) | (2, 2) | (2, 3)   (3, 2) | (2, 2) | (3, 2)   (3, 2) | (2, 3) | (2, 2)   (3, 2) | (3, 2) | (2, 2)
  -------------------------- -------------------------- -------------------------- --------------------------

## Input

- The input data starts with an integer N at the first line
- At the next N lines the sizes of the input frames are given (two integers separated by space describes each frame)

The input data will always be valid and in the described format. There is no need to check it explicitly

## Output

- On the first line output the number of unique orderings of the frames
- At the next lines output the unique orderings of the frames
    - Ordered in lexicographical order in the format shown in the example below

## Constraints

-   All numbers in the input will be in the range \[1…6\].

## Sample tests

- Input

```
3
2 3
2 2
3 2
```

- Output

```
12
(2, 2) | (2, 3) | (2, 3)
(2, 2) | (2, 3) | (3, 2)
(2, 2) | (3, 2) | (2, 3)
(2, 2) | (3, 2) | (3, 2)
(2, 3) | (2, 2) | (2, 3)
(2, 3) | (2, 2) | (3, 2)
(2, 3) | (2, 3) | (2, 2)
(2, 3) | (3, 2) | (2, 2)
```
