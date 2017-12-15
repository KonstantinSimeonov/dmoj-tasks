Inside the sea (a standard Cartesian /rectangular/ coordinate system) we are given a ship **S** (a rectangle whose sides are parallel to the coordinate axes), a horizontal line **H** (the horizon) and three catapults, given as coordinates **C<sub>1</sub>**, **C<sub>2</sub>** and **C<sub>3</sub>** that will be used to fire the ship. When the attack starts, each catapult hits a projectile exactly into the positions that are symmetrical to **C<sub>1</sub>**, **C<sub>2</sub>** and **C<sub>3</sub>** with respect to the horizon **H**. When a projectile hits some of the corners of the ship, it causes a damage of 25%, when it hits some of the sides of the ship, the damage caused is 50% and when it hits the internal body of the ship, the damage is 100%. When the projectile hit outside of the ship, there is no damage. The total damage is sum of the separate damages and can exceed 100%.

At the figure below a sea, a ship **S**, a line **H**, three points **C<sub>1</sub>**, **C<sub>2</sub>** and **C<sub>3</sub>** and their hit positions are shown:

<img src="https://rawgit.com/Minkov/dmoj-tasks/master/easy/11math/02shipdamage/sample.png" />

Your task is to write a program that calculates the total damage caused after the attack over the ship.

# Input

- Read from the standard input

- There will be exactly **11** lines holding the integer numbers **S<sub>X1</sub>**, **S<sub>Y1</sub>**, **S<sub>X2</sub>**, **S<sub>Y2</sub>**, **H**, -**C<sub>X1</sub>**, **C<sub>Y1</sub>**, **C<sub>X2</sub>**, **C<sub>Y2</sub>**, **C<sub>X3</sub>**, and **C<sub>Y3</sub>**. The ship **S** is given by any two of its opposite corners and is non-empty (has positive width and height). The line **H** is given by its vertical offset. The points **C<sub>1</sub>**, **C<sub>2</sub>** and **C<sub>3</sub>** are given as couples of coordinates and cannot overap each other.

- The input data will always be valid and in the format described. There is no need to check it explicitly.

# Output

- Print to the standard output

- The output should consist of a single line holding the total damage given as percentage.

# Constraints

-   The numbers **S<sub>X1</sub>**, **S<sub>Y1</sub>**, **S<sub>X2</sub>**, **S<sub>Y2</sub>**, **H**, **C<sub>X1</sub>**, **C<sub>Y1</sub>**, **C<sub>X2</sub>**, **C<sub>Y2</sub>**, **C<sub>X3</sub>**, and **C<sub>Y3</sub>** are all integers between -100 000 and 100 000, inclusive.


# Sample tests

## Input

```
-11
6
-6
3
1
-9
-3
-12
-4
-6
-1
```

## Output

```
125%
```

## Input

```
-6
6
-11
3
1
-9
-4
-11
-1
2
2
```

## Output

```
75%
```