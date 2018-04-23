# Weights

**Vanko** loves to train and have **big muscles** and fight with **mutant squirrels**. In fact, he enjoys fighting mutant squirrels so much, he wants to help other people try out his hobby. That's why he recently opened a gym, so that people can train, become stronger and fight mutant squirrels with him. Unfortunately, he's a bit low on cash but he knows how to use metal garbage pieces to make weights for a **lejanka**. He stacks metal pieces on top of each other and everyone can adjust the amount of weight they train with by putting a pin between any two pieces. Example:

```
5 <--- pin here means lifting 5
3
8 <--- pin here means lifting 5 + 3 + 8 = 16
4
```

Since there are a lot of metal pieces and people who train with different weights, **Vanko** needs your help, because he can't program (do you even programming, bro? not even once!). For every person that wants to train with weight of at least *W*, find the index of the metal piece after which you should put the pin, so that the weight is at least *W*. If this is not possible (*W* is too big) place the pin at the end. Example:

```
5 <-- 4 is here
3 <-- 7 is here
8
4 <-- everything > 16 goes here
```

## Input
- On the first line, you will receive 2 integer numbers - **N** and **P**, separated by a whitespace.
- On the second line, you will receive **N** natural numbers - the weights of the metal pieces, separated by a single whitespace.
- On the third line, you will receive **P** natural numbers - the amounts of weight that people want to train with, separated by a single whitespace.

## Output
- Output a single line - for every amount of weight, print where the pin should be put. Separate the pin indexes with a whitespace.

## Constraints
- 1 <= **N** <= 200000
- 1 <= **P** <= 200000
- each weight will be at most 50
- a person will never want to train with a weight heavier than 2<sup>32</sup>

## Samples

#### Input 1
```
4 3
1 8 4 2
5 9 20
```

#### Output 1
```
1 1 3
```

#### Input 2
```
5 4
1 2 3 4 5
2 3 4 5
```

#### Output 2
```
1 1 2 2
```