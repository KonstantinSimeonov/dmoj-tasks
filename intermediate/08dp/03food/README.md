# Food

## Description

Kolyo loves to eat. If we have to be honest - he likes to buy a bite and not use it fully. Each time he orders more food than his stomach can take, which of course is not optimal for his finances (not that he cares particularly...).

Each type of food has the following pointers - ** name **, ** weight W ** ** grams ** and ** taste C **. Kolyo's belly can hold a maximum of ** M ** grams of food in total. The aim is to find from ** N ** the number of foods, this part ** K ** of them, which have the maximum total taste but so that they assemble in Kolyo's belly and their total weight does not exceed ** M **.

Optimize Kolyo's diet so as to eat the most delicious food possible.

## Input data

Input data will be read from the console.

- The first line will contain the number ** M ** - the maximum grams of food Kolyo can eat.
- The second line will contain the number ** N ** - the number of foods Kolyo can choose from.
- The following ** N ** lines will contain the food types - each with a name, weight ** W ** and taste ** C **, separated by a space ("").

The input data will always be valid in the format described. They do not have to be explicitly checked.

## Output data

Output data will be printed on the console.

- On the first line you have to print ** the total maximum flavor ** of all ** K ** foods.
- On the next ** K ** lines you must print ** the names of the ** ** K ** products in reverse order of the order in which you received them from the input data.

## Limits

- ** N ** will be between ** 1 ** and ** 20 ** inclusive.
- ** M **, ** W ** and ** C ** will be valid 32-bit numbers larger than ** 0 **.
- Food names will be between ** 1 ** and ** 10 ** characters.

## Sample Tests

| Input | Output |
| -------------------------------------------------- ----------------------------------------------- ----------------------
| 10<br/>6<br/>pizza 3 2<br/>burger 8 12<br/>salad 4 5<br/>candy 1 4<br/>chicken 2 3<br/>swine 8 13 | 17<br/>swine<br/>candy |
