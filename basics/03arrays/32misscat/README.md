There are two things that cats love most: 1) sleeping and 2) attending beauty contests. The most important thing for each female cat is the contest “Miss Cat”. There are always ten cats that participate in the final round of the contest, numbered 1 to 10.

The jury of the contest consists of **N** people who subjectively decide which cat to vote for. In other words each person votes for just 1 cat that he has most liked, or from whose owner he has received the biggest bribe. The winner of the contest is the cat that has gathered most votes. If two cats have equal votes, the winner of the contest is the one whose number is smaller.

Your task is to write a computer program that finds the number of the cat that is going to win the contest “Miss cat”

# Input

- Read from the standard input

- The number **N** is on the first input line.

- An integer between 1 and 10 is written on each of the next **N** lines (this is the number of the cat)

- The input data will always be valid and in the format described. There is no need to check it explicitly.

# Output

- Print to the standard output

- On the only output line you must print the number of the cat, which has won the contest.

# Constraints

-   The number **N** is a positive integer between 1 and 100 000, inclusive.

-   The numbers of the cats for which the jury votes are positive integer numbers between 1 and 10, inclusive.

# Sample tests

## Input

```
1
6
```

## Output

```
6
```

## Input

```
4
1
3
3
7
```

## Output

```
3
```

## Input

```
5
1
2
3
1
2
```

## Output

```
1
```