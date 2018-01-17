You are chosen to represent Hogwards in the Triwizard tournament, despite being a mere muggle. You will face three challenges, the first of which being the maze. Unfortunately you can't cast any spells or use any magical items that might assist you in such scenario. Therefore, you decide to use your legendary C# skills to write a program, that would calculate the path for you. (Is Hogwards an IT academy now?!)

You are given an N amount of 4 digit integers. To decode these numbers, you need to do the following:

- If the sum of the even digits is greater than the sum of the odd ones, turn left.
- If the sum of the odd digits is greater than the sum of the even ones, turn right.
- If the two sums are even, continue straight.

# Example

For example, on one of the lines you receive the number **7429**. In that case, the sum of the even digits is **4 + 2 = 6** and the sum of the odd digits is **7 + 9 = 16**. As a result the sum of the odd digits is greater and the direction is right. Write a program that prints out the correct directions, based upon the N amount of numbers you receive on the console.

# Input

- Read from the standard input
- On the first line, you will receive the integer N
- On the next N number of lines, you will receive integers

# Output

- Print to the standard output
- The output consists of N number of line
  - Each line should consist of a single word, either **left**, **right** or **straight**

# Constraints

- The input data will always be valid and in the format described.
- N will be a valid, non­negative, non­zero integer in the range of 1 to 20 inclusive.
- Each integer will consist of 4 digits.
- Each digit will be of non­zero value, in the rage of 1 to 9 inclusive.

# Sample tests

## Input

```
4
7125
2846
5842
7719
```

## Ouput

```
right
left
left
right
```

## Input

```
2
1232
2523
```

## Output

```
straight
right
```

## Input

```
1
2332
```

## Output

```
right
```
