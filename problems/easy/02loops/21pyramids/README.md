Coki went to Egypt once. Since then he loves pyramids. As all of us
know, Coki also loves numbers\...

Sooooo, the expected result is that Coki wants to make pyramids of
blocks with numbers!

You have `N` blocks. With these blocks you should form pyramids.

Each pyramid is actually a right-angled, isosceles triangle with one
cathetus on the surface (see example). Also, you can think of the
triangle as a set of columns, where the leftmost is `1` and the
rightmost is the highest. The `K`^th^ column has exactly `K` blocks on
top one another.

Your task is to find the total number of full columns, given a total of
`N` blocks

# Input

You will receive an array with a single element, the number `N`, as only
parameter of the `solve(args)` function.

-   *Note*: see sample tests

# Output

Print to the standard output, i.e. with `console.log()` method

-   Print the number of full columns for `N`

# Constrains

-   1 \<= `N` \<= 2^50^

# Sample tests

## Input
```
solve(["5"])
```

## Ouput
```
2
```

## Explanation
```
o
o o
o o
```

## Input
```
solve(["8"])
```

## Ouput
```
3
```

## Explanation
```
o
o o
o o
o o o
```
