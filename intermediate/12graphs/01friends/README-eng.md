Pesho and Gosho are developers. Gosho is a bad programmer. He always manages to steal someone's solution for a task and submits it to his teacher first. Pesho, on the other hand, is a very good boy. He's not particularly smart, but he's nice.

The two have the following task: Having multiple cities, find the shortest way between two cities, and you must pass through two other cities. The distance between each two cities is a positive integer between 1 and 1000.

Example:

<img src="https://raw.githubusercontent.com/Minkov/dmoj-tasks/master/intermediate/12graphs/01friends/map.png" /

- The path from the starting city to any of the intermediate cities cannot include the other intermediate city and/or the final city
- The path from the final city to any of the intermediate cities cannot include the other intermediate city and/or the starting city
- The path between the intermediate cities cannot include the starting and/or the final city

# Input

- The input will be read from the console
- On the first line of the input you will find the numbers `N` and` M`, separated by one space (space)
    - N is the number of cities
    - M is the number of connections between two cities
- On the second line of the entrance you will find the **starting city** ** and **the final city** of the road, separated by a space,
- On the third line of the entrance you will find **the two intermediate cities**, through which **the road passes from the starting and final cities**
- On the next `M` lines you will find **the links between cities**:
    - Three numbers per line: `F T D`
        - `F T D` means there are connections from **F to T** and from **T to F** and **the distance is D **

# Output

- Print to the standard output
- On the single line, print the **the minimum distance from the starting to the final cities passing through the intermediate ones**

# Constraints
- `N` will be between `1` and `1000` inclusive
- `M` will be between `1` and `2000`
- `D` will be between `1` and `1000`

# Sample tests

## Input

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
