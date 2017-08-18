# Numbers

## Description

Coki loves numbers. In all forms. Yet, his number preferences change from time to time. **Now he likes small numbers**.

Given a matrix of numbers, find the path with minimal sum from the top-left corner to the bottom-right corner.

Simple, right? Yes, but no. Coki is not a regular person - moving to top, bottom, right or left cell is too mainstream for him. Soo... moving is done by rows and cols, that from each cell, you can land on any cell that is on its row or column.

**INSERT IMAGE**


## Input

- On the first line you will find two numbers `R` and `C`
  - The dimentions of the matrix
- On the next `R` there will be `C` number of numbers
  - Representing the cells


## Output

- On the single line of the output print the **minimal sum** of the numbers

## Constraints

- 1 <= `R` <= 1000
- 1 <= `C` <= 1000
- Each of the cells will contain number between 1 and 100

## Sample Tests


### Input

```
5 6
1 2 3 4 5 6
7 8 9 10 11 12
13 14 15 16 17 18
19 20 21 22 23 24
25 26 27 28 29 30
```

### output

```
37
```
