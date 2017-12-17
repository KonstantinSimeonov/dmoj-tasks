# Recover Message

## Description

Networks are infamous for being unreliable. Data sent over the network may be lost midway or received out of order. For the purpose of this problem, however, we will assume that the data will be received in the correct order but some parts of it may be missing.

The original message is a string consisting of distinct letters (lowercase and uppercase letters are considered distinct). This message is sent multiple times, and the received messages are exactly N. Each received message will be a subsequence (not necessarily contiguous) of the original message that retains the relative ordering between letters. Each message will contain only distinct characters.

Write a program that finds the shortest possible original message. The constraints will guarantee that at least one such message exists. If there are multiple such messages, find the lexicographically first one.

## Input

The input data should be read from the console

- The number of received messages **N** will be given on the first input line
- On the next **N** lines you will be given all received messages

The input data will always be valid and in the format described. There is no need to check it explicitly
no need to check it explicitly

## Output

The output data should be printed on the console

- On the only output line write the shortest possible (and lexicographically first) original message

## Constraints

-   **N** will be an even integer between 1 and 50, inclusive.
-   Each messages will contain between 1 and 50 characters, inclusive.
-   Each message will contain only the characters 'a'-'z' and 'A'-'Z'.
-   There will exist at least one string such that each element of messages is a subsequence of this string.
-   If two Strings A and B have the same length, then A comes before B lexicographically if it has a smaller character at the first position where the Strings differ. When comparing the characters, refer to the following list of characters in ascending order: 'A', 'B', …, 'Z', 'a', 'b', …, 'z'

## Sample Tests

- Input

```
4
ed
dc
cb
ba
```

- Output

```
edcba
```

- Input

```
4
ac
cd
bc
ce
```

- Output

```
abcde
```
