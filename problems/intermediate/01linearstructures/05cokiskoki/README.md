Coki likes to make skok-podskok.

Recently Koci, his evil genius twin, used this weakness of Coki and started making experiments on him. The last experiment was successful and now Coki gained the superpower to make really big skoks (jumps). Now, Coki is known as the masked vigilante **Skok**, with the cape and underwear-above-the-pants stuff.

He wants to try his newfound powers. He is in the city, and there are really high buildings there. He wants to try to make the longest possible sequence of jumps.
Since Coki is still pretty new at this, he can jump only on buildings that are higher than the one he is on, and also there are not higher buildings between. Also, Coki can jump only from left to right.

Help Coki to hone his powers!

The heights of the buildings are represented as a sequence of numbers. You task is to find the longest sequence of jumps that Coki can make, starting from each building.

# Input

Read from the standard input

- On the first line you will find the number `N`
  - The number of buildings
- On the second line you will find `N` numbers, separated by a space
  - The heights of the buildings

The input will be correct and in the described format, so there is not need to check it explicitly.

# Output

Print to the standard output

- On the first line, print the length of the longest sequence of jumps
- On the second line, print the lengths of the sequences, starting from each building

# Constraints
- The buildings will always be less than 103344

# Sample Tests

## Input

```
6
1 4 2 6 3 4
```

## Output

```
2
2 1 1 0 1 0
```

## Explanation

- Building 1:
  - `1 -> 4 -> 6` (2 jumps)
- Building 2:
  - `4 -> 6` (1 jump)
- Building 3:
  - `2 -> 6` (1 jump)
- Bulding 4:
  - `6` (0 jumps)
- Building 5:
  - `3 -> 4` (1 jump)
- Building 6:
  - `4` -> (0 jumps)

## Input

```
5
1 1 1 1 1
```

## Output

```
0
0 0 0 0 0
```
