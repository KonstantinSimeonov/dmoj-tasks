# Horses

We are given a square matrix of `N` x `N` cells.
Some of the cells are empty ('`-`') and the rest are impassable
('`x`’). We need to move a horse from one position to another position
in the matrix in the way horses jump in chess. At the figure it is shown
where a horse located at given cell (indicated with “`o`”) can go with
a single jump – the 8 cells indicated with “`\`*”.

<img src="data:image/png;base64,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">

Your task is to write a program that finds the shortest path of the
horse (shortest sequence of jumps) to move from one position to another
position in given square matrix by passing only through empty cells.

Note that rows are numbered from 0 from top to bottom and columns are
numbered from 0 from left to right.

### Input

The input data should be read from the console.

At the first input line there will be a single integer number `N`.

At the next `N` lines there are sequences of `N` characters `''-''`,
`'x'`, `'s'`, `'e'` separated by a space (see the example below).

The cells denoted by `'s'` and `'e'` are respectively the starting
cell and the end cell. There will be exactly one starting and end cell.

The input data will always be valid and in the described format. There
is no need to check it explicitly.

### Output

The output data should be printed on the console.

At the only output line the minimal number of horse jumps should be
written or `"No"` if a path does not exist.

### Example

  ----------------------- ------------------------ --------------------------------------------------------------------------------------
  ``Input example``   ``Output example``   ``Explanation``

  4                       5                        The path is: (0, 1) -&gt; (2, 2) -&gt; (0, 3) -&gt; (1, 1) -&gt; (2, 3) -&gt; (0, 2)

  - s e -

  x - x -

  x x - -

  - x - x
  ----------------------- ------------------------ --------------------------------------------------------------------------------------
