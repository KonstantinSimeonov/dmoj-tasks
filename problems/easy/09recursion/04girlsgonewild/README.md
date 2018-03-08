As you know girls like to exchange their clothes. You are given **N** girls with **K** shirts and **L** skirts. For easier understanding shirts are indexed with numbers (zero-based) and skirts are indexed with letters. Numbers are always from **0** to **K – 1**. Letters are any lower case English letter. Some skirts are the same so letters are not distinct.

Your task is to find in how many ways the girls can choose one shirt and one skirt for each one of them. 

## Input
- The input data starts with an integer **K** at the first line – the number of shirts. 
- At the second line there will be a string with **L** symbols – the letters used for the skirts.
- At the third line there will be an integer **N** – the number of girls. 
- The input data will always be valid and in the described format. There is no need to check it explicitly.

## Output

- The output data starts with an integer **R** at the first line – the number of unique ways the girls can choose one shirt and one skirt.
- At the next **R** lines the unique ways of chosen clothes should be given in lexicographical order in the format shown in the example below.


## Sample tests

### Input
```
3
baca
2
```

### Output
```
21
0a-1a
0a-1b
0a-1c
0a-2a
0a-2b
0a-2c
0b-1a
0b-1c
0b-2a
0b-2c
0c-1a
0c-1b
0c-2a
0c-2b
1a-2a
1a-2b
1a-2c
1b-2a
1b-2c
1c-2a 
1c-2b
```
