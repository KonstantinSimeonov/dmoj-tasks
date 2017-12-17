# Numerology

## Description

Pesho thinks that numerology is buggy. That is why he developed his own method of playing with the divine, suitable for programmers.

Here is how to calculate your abilities.

You start with a number (always a number) - your birthday in the format `YYYYMMDD`. Instead of summing the digits, do the following operations:
- Choose two neighbouring digits  - `a` and `b`
- Perform the following operation: `(a + b) * (a ^ b) % 10`
  - `+` is addition
  - `*` is multiplication
  - `^` is bitwise exclusive or (XOR)
  - `%` is modulo division
    - `% 10` means get just the last digit
- Replace the chosen digits with the result
- You get an one-digit shorter number
  - Repeat the process until you get only a single digit

Pesho noticed that depending on your choices of digits you would get different results in the end. So he advises you to do each possible combination and count how many times you get `0`, `1`, ... `9`.

After you've done all the calculations you can look yourself up in the table:

| Digit | Meaning                              |
|:------|:-------------------------------------|
| `0`   | You are a very good programmer       |
| `1`   | You will create very useful programs |
| `2`   | You are ugly                         |
| `3`   | You will always depend on an IDE     |
| `4`   | You like strange languages           |
| `5`   | You loath science fiction            |
| `6`   | `6`? `6` is still a mystery to Pesho |
| `7`   | You think class inheritance is magic |
| `8`   | You do not mind dynamic typing       |
| `9`   | You are going to be famous           |

## Input
- Input is read from the console
  - An `8` digit number is read from the first input line

## Output
- Output should be printed on the console
  - Print the `10` numbers on a single line
    - separate them by spaces

## Constraints
- **Time limit**: **0.05s**
- **Memory limit**: **16 MB**

## Sample tests

### Sample test 1

#### Input
```
18790314
```

#### Output
```
0 1006 0 286 0 1473 0 205 0 2070
```

### Description
```
Obviously Einstein is not a good programmer
```

### Sample test 2

#### Input
```
19960229
```

#### Output
```
3311 0 0 0 885 0 144 0 700 0
```
