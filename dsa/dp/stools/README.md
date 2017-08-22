# Stools

## Description

Little Timmy likes to make up and down games and you as a friend must always help him. This time, Timmy decides to set up stools on top of each other and make a tower.

The stools are the final count. Each of them is in the form of a ** rectangular parallelepiped **. Timmy builds his tower by taking a stool that has not been placed, and puts it on the top of the current tower. But the stools were of a different size, and in order for the tower to be stable, the bottom of every stool Timmy had to be entirely within the top of the stool on the top of the current tower. Timmy can ** turn ** the stools as he wants, and choose which one to be the basis. The edges of each stool in the tower must be parallel to the respective edges of the main stool.

Help Timmy calculate how much ** the maximum tower height ** he can achieve with his stools.

## Input

The input data is read from the console.

- A natural number will be assigned to the first line of input data ** N ** - the number of Timmy's stools.

- Next ** N ** lines will be set to ** 3 ** natural numbers ** X **, ** Y ** and ** Z **, which describe the dimensions of the next stool.

Input data will always be valid in the format described.

## Exit

The output data should be output to the console.

- On the only row of source data, display the maximum tower height that can be achieved by following the above rules.

## Limits

- 1 & lt; = ** N ** & lt; = 15
- 1 & lt; = ** X **, ** Y **, ** Z ** & lt; = 10,000,000

### Sample Tests

| Input | Output |
| --------------------------- ------
| 2 <br/> 20 20 20 <br/> 30 30 10 | 30 |

Here the best solution is to put the second stool with the 30x30 side to the floor and then the first stool on it. Another valid solution is to use only the second stool with the 30x10 side to the floor.
