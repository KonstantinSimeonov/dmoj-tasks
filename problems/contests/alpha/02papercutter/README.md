The Triwizard tournament continues and you are faced with yet another challenge. This time, you have to craft confetti out of some very expensive sheets of paper. Again, you rely on your C# mastery in order to complete this challenge.

A10 is a standard for paper size. A9 is another standard that is twice as big as A10, so A9 can be cut into 2 pieces of size A10. A8 is twice as big as A9 and so on. A0 is twice as big as A1. See the picture on the left.

You are given one sheet of each A size standard from 0 to 10, which means you have 11 sheets in total. You need to cut N amount of A10 sized pieces out of the sheets you have, using as few of them as possible (without leaving any semi­cut sheets!).

For example, if you receive the number 9 as N, you need to craft 9 pieces of size A10 by cutting the sheets you have. You would use:

- The A7 sheet ­ cut it into 8 pieces of size A10. (A7 is 8 times as big as A10)
- The A10 sheet ­ which you already have.

In that case, you would have used only two sheets. All other 9 sheets would not be used and they should be printed on the console. The order of printing of the sheets does not matter.


# Input

- Read from the standard input
- On the single line, read the integer number **N**


# Output

- Print to the standard output
- Each line should consist of a sheet size, **not used in the cutting**

# Constraints

- The input data will always be valid and in the format described
- The order in which you print out the not used sheets does not matter
- N will be a valid, non­negative, non­zero integer in the range of 1 to 2046 inclusive

# Sample tests

## Input

```
1
```

## Output

```
A9
A8
A7
A6
A5
A4
A3
A2
A1
A0
```


## Input

```
9
```

## Output

```
A9
A8 
A6 
A5 
A4 
A3 
A2 
A1 
A0
```

## Input


```
1337
```

## Output

```
A1
A3 
A4 
A8 
A9
```
