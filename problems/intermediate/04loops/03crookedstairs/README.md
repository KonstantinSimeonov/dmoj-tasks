You need to design the staircases for the first skyscraper in Sofia. But not just any ordinary stairs - in order to keep the people awake while using them, each brick you place must have a different height, even if that violates the laws of physics.

A staircase is a **sequence of bricks**, ordered in a shape, similar to a **triangle**. Each brick triangle is being built in layers from the **top to the bottom** (as we said, we don't care about physics).

The **first layer** of the brick triangle contains only the first brick of the sequence. The **second layer** contains the second and third bricks and so on. A brick triangle of **3 layers** would look something like this:

Brick1
Brick2 Brick3
Brick4 Brick5 Brick6 

The sequence of bricks begins with **three integers** (the brick heights), that can be either **positive or negative**. The height of each brick, after the third one, is calculated by the sum of the last three bricks, using the formula -> **Bhn = Bhn-1 + Bhn-2 + Bhn-3**, where **Bh** is the brick height.

So if **Brick1** has a height of 2, **Brick2** of 1 and **Brick3** of 5, the triangle would look like this:

2 
1 5 
8 14 27

- **Brick4**'s height is calculated by **Bh4 = Bh4-1 + Bh4-2 + Bh4-3**, which results to **Bh4 = 2 + 1 + 5 = 8**  
- **Brick5**'s height is calculated by **Bh5 = Bh5-1 + Bh5-2 + Bh5-3**, which results to **Bh5 = 1 + 5 + 8 = 14**  
- **Brick6**'s height is calculated by **Bh6 = Bh6-1 + Bh6-2 + Bh6-3**, which results to **Bh6 = 5 + 8 + 14 = 27**   
	
	
# Input 
- The first **three lines** will contain the heigths of the first three bricks of the brick sequence.  
- On the **fourth line** of the input, there will be the number L – the number of layers in the brick triangle.

# Output   
- The output should contain exactly L amount of lines.  
- The first line should consist of exactly 1 number.  
- The second line should consist of exactly 2 numbers, separated by a space (" ").  
- The third line should consist of exactly 3 numbers, separated by a space (" ").  
- And so on...   

# Sample tests 

## Input 
``` 
2 
1
5
3
```  

## Output 
``` 
2
1 5 
8 14 27 
```  

## Input 
``` 
3
-2
-1
4 
```  

## Output 
``` 
3
-2 -1
0 -3 -4
-7 -14 -25 -46 
```
