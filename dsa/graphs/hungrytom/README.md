# Task 1 - Hungry Tom

Tom was tired of chasing Jerry and decided to finally catch him. To do so, he has to go through all the rooms in the house, put traps and return to the original room (since from there he can  observe all others with hidden cameras). Tom is in a large house with `N` in rooms and `M` doors between these rooms. The rooms are numbered from `1` to `N`. Tom is in room 1. Tom must go through each room only once, to save time. Moving from room to room is possible only if there is a door between them.

Help Tom to execute his evil plan by showing him all possible paths he can go though the rooms. The paths must be arranged lexicographically (when two ways are recorded as strings containing the sequence of room numbers, then one way is lexicographed before the other when his corresponding string is less lexicographed than the other, ie 1 2 3 is less than 1 3 2). Roads 1 2 3 1 and 1 3 2 1 are different.

## Input

The input data will be read from the console.

- On the first line will be the number of rooms `N`

- On the second line will be number of doors `M`

- Each of the following ** M ** lines ** ** contains two numbers separated by a space. The pair of numbers x y means that there is a door between x and y.
-
The program entry will always be valid in the format described. There is no
Need to be explicitly checked.

## Exit

The output of the program must be printed on the console.

- On the first line of the console, the number of all ways Tom should be able to circumnavigate the rooms should be written, and the following lines should be written in the same ways, sorted lexicographically.
  - If there is no reply to the console, the number -1 must be written.

## Limits

- ** N ** is always an integer from ** 2 ** to ** 10 **, inclusive.
- ** M ** will always be in the range of ** 0 ** to (** N \ * (N-1)) / 2 **
- The time allowed to run the program is ** 0.3 ** second.
    Memory limit: ** 16MB **.

## Examples

| Login | Exit
| --------------------------------------- | ----------------------------- |
| 3 <br/> 0 | -1 |
| 4 <br/> 4 <br/> 1 2 <br/> 2 3 <br/> 3 4 <br/> 4 1 | 2 <br/> 1 2 3 4 1 <br/> 1 4 3 2 1 |
