We are given a square matrix of **N** x **N** cells. Some of the cells are empty (‘**-**‘) and the rest are impassable (‘**x**’). We need to move a horse from one position to another position in the matrix in the way horses jump in chess. At the figure it is shown where a horse located at given cell (indicated with “**o**”) can go with a single jump – the 8 cells indicated with “**\***”.

<img src="https://raw.githubusercontent.com/Minkov/dmoj-tasks/master/easy/13graphs/05horsematrix/moves.png" />%

Your task is to write a program that finds the shortest path of the horse (shortest sequence of jumps) to move from one position to another position in given square matrix by passing only through empty cells.

Note that rows are numbered from 0 from top to bottom and columns are numbered from 0 from left to right.

# Input

- Read from the standard input

- At the first input line there will be a single integer number **N**.

- At the next **N** lines there are sequences of **N** characters ‘**-**‘, ‘**x**’, ‘**s**’, ‘**e**’ separated by a space (see the example below).

- The cells denoted by ‘**s**’ and ‘**e**’ are respectively the starting cell and the end cell. There will be exactly one starting and end cell.

- The input data will always be valid and in the described format. There is no need to check it explicitly.

# Output

- Print to the standard output

- At the only output line the minimal number of horse jumps should be written or “**No**” if a path does not exist.

# Constraints

-   **N** will be between 1 and 500, inclusive.

# Sample Tests

## Input

```
4
                 
- s e -                    
x - x -             
x x - -
- x - x
```

## Output

```
5
```

## Explanation

```
The path is: (0, 1) -&gt; (2, 2) -&gt; (0, 3) -&gt; (1, 1) -&gt; (2, 3) -&gt; (0, 2)
```


