You all know the Fibonacci sequence. Well, the Tribonacci sequence is almost the same, but it uses the last three numbers (instead of the last two) to calculate the next number in the sequence. So, we can define each element in the sequence as:

T <sub>n</sub> = T <sub>n-1</sub> + T <sub>n-2</sub> + T <sub>n-3</sub> where T <sub>n</sub> is the current Tribonacci number (<sub>n</sub> is the index of the current Tribonacci number).

The Tribonacci sequence can begin with any three integer numbers – positive or negative – and continue as described by the formula above.

Now, a Tribonacci triangle is a triangle of numbers from the Tribonacci sequence. The first line of the triangle contains only the first number of the Tribonacci sequence. The second line contains the second and third numbers of the Tribonacci sequence, separated by a single whitespace (" "). The third line contains the next three numbers of the Tribonacci sequence (again, separated by whitespaces). The fourth line contains the next four numbers and so on. Basically, every line contains one more number than the previous.

Your task is to write a program, which prints to the console a Tribonacci triangle by given the first three numbers of the Tribonacci sequence, and the number of lines in the triangle.

# Input

The input data should be read from the console.

- The **first three lines** will contain the values of the **first three numbers** of the Tribonacci sequence – each number will be on a separate line.

- On the fourth line of the input there will be the number **L** – **the number of lines** in the Tribonacci triangle.

- The input data will always be valid and in the format described. There is no need to check it explicitly.

# Output

- The output data should be printed on the console.

- The output should contain **exactly L lines**. The **first line should contain exactly one number**, the **second line – exactly two numbers**, the **third line** (if L&gt;2) **– exactly three numbers**, …, the **L-th line should contain exactly L numbers**. Numbers should be **separated by exactly one whitespace** (" "), and there **shouldn't be any whitespaces after the last number on a line**.

# Constraints

-   2 ≤ **L** ≤ 20.

-   Any number in the Tribonacci triangle can be stored in a 64-bit signed integer.


# Sample tests

## Input

```
1
2
3
3
```

## Output

```
1
2 3
6 11 20
```

## Input

```
1
-1
1
4
```

## Output

```
1
-1 1
1 1 3
5 9 17 31
```