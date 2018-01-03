# Friends

## Description
Pesho and Gosho are programmers. Gosho is a poor programmer. He always manages to steal someone's solution for a problem and submit it first. Pesho, on the other hand, is a very good guy. He's not a smart guy, but he's nice.

They have to solve the following problem: Having multiple cities, find the shortest path between two cities, necessarily going through two more. The distance between each two cities is a positive integer between 1 and 1000.

Example:

<img src="https://rawgit.com/TelerikAcademy/AlgoAcademy/master/2016-05-Final-Competition/Problems/Friends/imgs/example.png">

The other intermediate or final city can not enter the road from the start town to one of the intermediate cities. The other intermediate or starting city can not participate in the road from the final city to one of the intermediate ones.

## Input
- The input will be read from the console
- On the first line of the input you will find the numbers `N` and` M`, separated by one space (space)
  - N is the number of cities
  - M is the number of connections between two cities
- On the second row of the entrance, you will find the ** ** and ** ** endpoints of the road separated by one space,
- On the third line of the entrance you will find ** the two intermediate cities ** through which ** the road from the starting and the final cities **
- On the next M lines you will find **the links between cities**:
  - Three numbers per line: `F T D`
    - `F T D` means there are connections from **F to T** and from **T to F**, ** the spacing of these links is D **

## Exit
- The output will be output to the console.
- The exit consists of a single row: ** the minimum distance from the starting to the extreme peaks passing through the intermediate ones **

## Limits
- `N` will be between` 1` and `1000` inclusive
- `M` will be between '1` and` 2000`
- `D` will be between` 1` and `1000`
- Allowed time for your program: ** 0.1 second **
- Allowed memory for your program: ** 16 MB **

## Examples

- Input

```
18 30
1 17
11 4
1 8 15
1 9 1
1 14 100
2 4 100
2 8 10
2 9 100
3 9 100
3 10 3
3 14 1
4 9 1
4 10 3
4 11 1
5 11 6
5 16 7
6 7 1
6 11 1
6 15 7
6 16 1
7 11 3
7 15 2
7 18 1
8 18 1
10 12 4
10 13 6
11 12 5
12 13 10
12 17 100
13 14 2
15 16 10
16 17 2
```

## Output

```
7
```
