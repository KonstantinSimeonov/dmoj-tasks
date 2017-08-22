# Task 6 - Ninja

## Description

Ivo is a young ninja. He has not yet mastered the ability to move unnoticed into light. On the other hand, however, ** in dark places, Ivo moves without anyone feeling it.

Jumping to the left and right, one day Ivo came into an interesting area of ​​rooms. The rooms were located in a square matrix of size `NxN`. Each room had lighting (lamps) that was either on or off. The interesting thing in this area of ​​rooms is that ** every second the light changed its condition ** - the lights switched off and the switched off illuminated.

For example, if in the first second the rooms were as shown in the left-hand table below, they are in the state shown on the right-hand table (the white cells indicate the light, the gray ones are extinguished).

Ivo can only pass to the adjoining rooms that have ** a common wall ** with the current room and are ** down or right ** from the room where Ivo is located. For example, in the above examples, from room (1.1) Ivo can move into rooms (2.1) or (1.2). Entering another room happens exactly the next second after Ivo has decided to leave the current room. In other words, if at the moment of departure the room in which Ivo wishes to go shines, he will have no problem going into it, because in the next second it will be extinguished. ** Ivo can stay in any room any number of seconds (0 or more). ** When Ivo falls into a certain room, she stays off until Ivo leaves her. In the first second, Ivo is located in the top and left room (0.0) and in the second second he has to choose whether to stay in (0.0) or move to one of the two adjoining rooms: , 1) or (1.0). \

Write a program that finds the shortest time (in seconds) for which Ivo can move from the top and left room (0.0) to the lowest and the rightmost room (`N-1`, `N-1`), following the rules described. Stepping into the first room (0.0) also costs Ivo for one second.

## Input

Input data will be given to the console (standard input)

- The full integer *** N *** is entered from the standard input.

- Follow the `N` line followed by` N` numbers describing the room card in the first second. The next time the lights will be back, Ivo has to figure out which room to come in. Each of the numbers can be either 0 or 1, where 0 indicates that the room is out of focus, and 1 indicates that the room is lit.

The program entry will always be valid in the format described. There is no need to be explicitly checked.

## Exit

The output of the program must be printed on the console.

- The program should show the minimum number of seconds for which Ivo can move from the top left and left room to the lowest and the rightmost room without being spotted.

## Limits

- 2 ≤ ** N ** ≤ 1500
- The topmost left room (0.0) will always be out of focus.

### Example

| Input | Output |
| ------------------------------------------------- | ------
| 4 <br/> 0 1 1 1 <br/> 0 1 0 0 <br/> 1 0 1 1 <br/> 1 0 1 1 | 10 |
