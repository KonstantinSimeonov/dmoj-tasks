Bojinkov likes to play football and he likes chalga as well. As we all know Bojinkov doesn’t like to play with his teammates and he is trying always to finish the attack. So one day the coach decides that he can attempt the goal only if all the players in the attack touch the ball before Bojinkov tries to score. So he should pass the ball and all the players should touch it **only once** and then the ball should return to him.

But as you all know some of the players in the team like the same girl. This is Nikoletka. **Not all of them are happy to pass each other the ball.**

Bojinkov wants to score the goal as fast as he can. You should find if with the available players and the connections between them he could receive the ball again, and what is the minimum time needed for this to happen.

You are given **N** players and connections between them, as well as the time **T** needed for the ball to move between each two players. The starting position will be given in the input.

# Input

- The input data should be read from the console.
- On the first line you will receive the number of the players in the attack. **From 1 to N.**
- On the second line you will receive the starting player number.
- On next **lines until you reach “end”** you will receive the information about the players and the time needed for the ball to move between them.
  - The format will be **P1 P2 T. \[Player1 Player2 Time\].** Separated by whitespace.
- **Starting player is always Player number 1.**
  - The ball could move from Player1-&gt;Player2 and from Player2-&gt;Player1.
- The input data will always be valid and in the format described. There is no need to check it explicitly.

# Output

- The output data should be printed on the console.

- On the only output line, print the time needed for the ball to travel from Bojinkov to him again after all the players touch it
  - Each player can touch the ball **only once**. Only start player is allowed to touch the ball twice, once in the start and once in the end.

- If this is not possible you should **print 0** on the console.

# Constraints

-   **N** will be in the range \[1, 20\]
-   The time **Т** will be in the range \[1, 2 000 000 000\]

# Sample tests

## Input

```
5
1
1 2 5
3 1 4
1 5 10
2 4 7
4 3 2
3 5 1
end
```

## Output

```
25
```

## Explanation

```
Starting player 1
1 -> 2 Time: 5
2 -> 4 Time: 7
4 -> 3 Time: 2
3 -> 5 Time: 1
5 -> 1 Time: 10

Path: 1 2 4 3 5 1
Time: 5+7+2+1+10=25

Path could be other but all have the same time!
```

## Input

```
4
3
1 3 5
3 2 5
2 4 5
4 1 5
4 3 4
1 2 5
end
```

## Output

```
19
```

## Explanation

```
Path 1: 3 1 4 2 3
Time 1: 5+5+5+5=20
Path 2: 3 1 2 4 3
Time 2: 5+5+5+4=19
```

