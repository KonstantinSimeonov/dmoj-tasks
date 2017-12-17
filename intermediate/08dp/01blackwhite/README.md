# Squares

Let's have **N** rows and **M** columns of squares.
Each square can be colored in either black or white.
Write a program which finds the number of colorings where there are no two black squares next to each other.

## Input
- Input is read from the console
  - **N** is given on the first line
  - **M** is given on the second line

## Output
- Output should be printed on the console

## Constraints
- 1 <= **N**, **M** <= 100
- 1 <= Min(**N**, **M**) <= 10
- **Time limit**: **0.2s**
- **Memory limit**: **32 MB**

## Sample tests

### Sample test 1

#### Input
```
1
1
```

#### Output
```
2
```

#### Description
```
The square can be either black or white -> 2 ways
```

### Sample test 2

#### Input
```
2
2
```

#### Output
```
7
```

#### Description
```
All 4 squares can be white -> 1 way
One of the squares can be black -> 4 ways
Two oposite squares can be black -> 2 ways
Total -> 7 ways
```

### Sample test 3

#### Input
```
3
3
```

#### Output
```
63
```

#### Description
```
Count them :)
```
