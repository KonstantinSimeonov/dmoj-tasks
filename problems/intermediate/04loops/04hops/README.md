You recently got yourself a new pet - a bunny named Telerik. He is a fluffy cutie that is always hungry. So, in order to combat his constant craving, you let him out in your garden to eat carrots.
Your garden is a **narrow path of planted carrot rows**, each row can have **one or more** carrots. These carrots can be either **good** (represented by a positive integer) or **bad** (represented by a negative integer). An example for a field with carrots would be: **1 3 -6 7 4 1 12**
If Telerik eats **good** carrots, that's fine, but if he eats **bad** ones, his tummy starts hurting and he throws those up. So in the end, the bunny could either have eaten some carrots (**positive output**), or he is even more hungry (**negative output**).

- Telerik is a smart bunny. He can follow directions. The directions you give him are a **sequence of integers**, each of which tells him how many hops to make. If the integer is **positive**, he hops to the right, if the integers is **negative**, he hops to the left. An example of a sequence of directions is **3 2 -1**.
- He can also process **several sequences** of directions. Another example of such sequence is **2 -4 2**. As you can see in this example, the bunny stops hopping only after reaching a row he has already visited or if he gets out of the path with carrots. So the given directions can be repeated several times.

![sequence 1](./Sequence1.png)

![sequence 2 and 3](./Sequences2and3.png)
# Input

- The input will be an **array of strings**
- The first element will be the field with carrots - numbers separated with “, ” (comma and space).
- The second element will be **M** – the number of directions to try. 
- The next **M** elements of the array will be numbers, separated with “, “(comma and space), representing the directions themselves.

# Output

- The output should contain the maximal number of carrots, that the bunny can collect and eat using one of the directions sets.

# Constraints

- The numbers in the field will be in the range [1..10000] inclusive.
- Each of the numbers in the field or in the directions will be in the range [-1000..+1000] inclusive. 
- M will be between in the range [1..500] inclusive. 
- Each set of directions will contain at most 100 numbers.


# Sample tests

## Input
```
2, -4, -6, 10, 2, 1, 5
3 
3, 2, -1
2, 2, -4 
2, -3
```

## Output
```
15
```
