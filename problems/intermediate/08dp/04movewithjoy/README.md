# Move around

## Description

Do you know the phrase "Move for joy"? No? Well ... solve this task then for punishment!

Pesho likes to move when he's happy. And he is now very happy and will move a lot!

Pesho is currently located at coordinates ** (0, 0) ** on a field, and he wants to go to coordinates ** (Fx, Fy) ** using a certain ** J ** number of moves.

In a single motion, Pesho can be moved with 0, 1, 2, 3, 4, ..., ** Mx ** coordinates in positive direction ** x ** and with 0, 1, 2, 3, 4, ... , ** My ** coordinates in positive direction ** y **. That is, in one movement, the maximum is moved by ** Mx ** and ** My ** coordinates respectively in the direction ** ** ** ** ** **. Pesho always goes in a positive direction and never goes back.

Help Pesho find how many different ways he can get to ** (Fx, Fy) ** using exactly ** J ** in number of moves and starting from ** (0, 0) **.

## Input data

Input data will be read from the console.

- On the single line of input data you will read five numbers - ** Fx **, ** Fy **, ** Mx **, ** My ** and ** J ** in this sequence separated by a space (" ").

The input data will always be valid in the format described. They do not have to be explicitly checked.

## Output data

Output data will be printed on the console.

- On the only line of output data, print the various ways Pesho can reach the desired destination.

## Limits

- ** Fx **, ** Fy **, ** Mx **, ** My ** will be between ** 1 ** and ** 800 **, inclusive.
- ** J ** will be between ** 1 ** and ** 1600 ** inclusive.

## Sample Tests

| Input | Output |
| ------------- | ------
| 2 2 1 1 2 | 1 |
| 2 2 1 1 3 9 |
| 10 10 10 10 1 | 1 |
| 11 11 11 11 2 144 |
