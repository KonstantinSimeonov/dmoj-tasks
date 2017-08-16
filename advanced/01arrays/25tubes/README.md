# Tubes

## Description

Marto is a well-known Pernik fighter. He has N tubes with different sizes. Marto also has M-1 friends. His friends also need tubes for fighting.

Help Marto to cut his own tubes into exactly M parts with same sizes. This size should be maximal possible (bigger tube = better fighter).

Your task is to write a program that finds the biggest possible size of the M tubes which you can cut from the initial Marto’s tubes.

## Input

- The input data should be read from the console.
  - On the first input line your program should read the integer N – the number of Marto’s tubes.
  - On the second input line there will be the number M – the count of the tubes Marto needs.
  - On the next N lines your program should read the sizes of the Marto’s tubes Marto.
- The input data will always be valid and in the format described. There is no need to check it explicitly.

## Output
- The output data should be printed on the console.
- On the only output line you should print the maximal possible size of the M tubes. If it is impossible to cut the tubes with the given criteria write “-1” on the only output line.

##  Constraints
- N will be between 1 and 20 000, inclusive.
- M will be between 1 and 2 000 000 000, inclusive.
- The sizes of the tubes will be between 1 and 2 000 000 000, inclusive.

## Sample tests

| Input                                    | Output | Explanation                                                                    |
| ---------------------------------------- | ------ | ------------------------------------------------------------------------------ |
| 3<br/>6<br/>100<br/>200<br/>300          | 100    | In the first example we can cut the tubes into 6 parts (each with size of 100) |
| 4<br/>11<br/>803<br/>777<br/>444<br/>555 | 200    | We can cut the first tube into 5 parts (200, 200, 200, 200 and 3), the second tube into 4 parts (200, 200, 200 and 177), the third tube into 3 parts (200, 200 and 44) and the fourth tube into 3 parts (200, 200 and 155). <br/>After this cuts we have exactly 11 tubes with size of 200. The cuts we made are optimal. We can’t cut the tubes into 11 parts of size 201. |
