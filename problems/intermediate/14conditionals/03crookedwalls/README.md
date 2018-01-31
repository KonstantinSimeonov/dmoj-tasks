Now that you have successfully built the staircases, you need to design the walls for the first skyscraper in Sofia. And again, in order to make the building look more fancy and disobay the 'walls' of physics, each wall will have a different height.

The walls are a sequence of **N-amount of integers** that represent each wall's height, that can be either **positive or negative**. That sequence will be given to you in the input. You need to use it in order to calculate the space between each of the walls.

For example, you are given the sequence **2 7 4 12 6 4 4**. In order to calculate the distance between each of the walls, you need to find the absolute difference between their heights. 

**Absolute difference** between two integer numbers A and B is the difference of the larger between A and B minus the smaller between A and B. Examples:

- Absolute difference between 6 and 2 is 4 (6 – 2 = 4)
- Absolute difference between -4 and 4 is 8 (-4 – 4 = 8
 
Knowing that, our example becomes: **2 <sup>5</sup>7<sup>3</sup>4<sup>8</sup>12<sup>6</sup>6<sup>2</sup>4<sup>0</sup>4**. Now, that seems a bit too complicated, no? Lets make it easier. Instead of finding each distance between the walls, we will do some hopping around. Let me give you a hint so it's even easier. Start from the second wall's height. Then find the distance between the current wall and the previous wall.

- If the distance is an odd number, move one positions to the right.
- If the distance is an even number, move two positions to the right.
   
Knowing that, our example becomes: **2<sup>5</sup>7<sup>3</sup>4<sup>8</sup>12<sup>skipped</sup>6<sup>2</sup>4<sup>skipped</sup>4**, which results in **2<sup>5</sup>7<sup>3</sup>4<sup>8</sup>12<sup>0</sup>6<sup>2</sup>4<sup>0</sup>4**. Now, to make things even more simple, we need to find the sum of the **even** distances between the walls. In this example, the only even ones are between the walls with height **4 and 12** and the walls with heigth **6 and 4**. That means that we need to sum **8 + 2**. Therefore, we **output 10**.

# Input

- The sequence will be given on the only input line. All numbers will be separated by a single space (‘ ‘)

# Output

- On the only output line write the sum of all even distances between walls, found during the execution of your program.

# Constraints

- There will be between 2 and 200 numbers in the input, inclusive.
- Each number will be between -2 000 000 000 and +2 000 000 000.


# Sample tests

## Input
```
2 7 4 12 6 4 4
```

## Output
```
10
```


## Input
```
-7 2 4 13 6 -12 8
```

## Output
```
20
```

