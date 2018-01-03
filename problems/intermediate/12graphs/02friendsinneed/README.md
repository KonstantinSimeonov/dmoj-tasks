Pesho hates ordinary walking. This is so not because he is lazy, but he much more likes jumping and running. One day in Pesho's village an unexpected snow started to rain and caught Pesho unprepared – he was not wearing the appropriate clothes and shoes. But Pesho hated ordinary walking so much, that he continued jumping, instead of walking. While jumping the way home, Pesho slipped, fell down and hurt his leg. Then Pesho's friends in need started wondering: "Which hospital is closest to our homes, so when we take Pesho there, we will walk the minimal distance to our homes?" Your task is to help Pesho's friends, before he falls down again!

As input data you will receive the homes of Pesho's friends, the hospitals and the distances between them. Your task is to find the hospital that is closest to the friends' homes. A distance from hospital to homes is the sum of the distances from the hospital to each of the friends' homes. You should find the smallest distance.

# Input

- Read from the standard input

- On the first line will be read three integer numbers N, M and H (separated by a single white space), that represent corresponding the number of points on the map (both hospitals and homes), the number of streets between points and the number of hospitals.

- On the second line will be H integer numbers, the points on the map that are hospitals. All the rest of the points are homes.

- On the next M lines will be the streets. Each line contains three positive integer numbers F, S and D. That means that there is a street between points F and S, and the distance between them is D. All the streets are directional, i.e. if a street from A to B exists, there is a street from B to A.

- The input data will be always valid in the format described.

# Output

- Print to the standard output

- As output data you should write a single positive integer number – the minimal possible distance from one hospital to each of the Pesho's friends' homes.

# Constraints

-   0 &lt; N &lt; 10000
-   N - 1 &lt;= M &lt; 5 \* N
-   0 &lt; H &lt; 100
-   A way between a point and all other points will always exists
-   A single street is no longer than 20.

# Sample tests

## Input

```
3 2 1
1
1 2 1
3 2 2
 ```

## Output

```
4
```

## Explanation

1 is the only hospital. The minimal distance from 1 to 2 is 1, and the distance from 1 to 3 is 3. The total distance to the hospital is 4.

## Input

```
5 8 2
1 2
1 2 5
4 1 2
1 3 1
3 4 4
4 5 1
2 4 3
5 2 1
2 3 20
```

## Output


```
6
```

## Explanation

We have two hospitals: 1 and 2.
- Distances from 1: to 3: 1, to 4: 2, to 5: 3, total 6.
- Distances from 2: to 3: 5, to 4: 2, to 5: 1, total 8.

<img src="https://raw.githubusercontent.com/Minkov/dmoj-tasks/master/intermediate/12graphs/02friendsinneed/example.png" />

The winner is hospital 2 and the distance is 6