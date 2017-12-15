Krisi is such an amazing cook that she can easily be mistaken with a chef. Today Krisi is cooking a special meal she has never done before. To get it right she needs to follow her grandmother’s recipe. Unfortunately, she has already started cooking and was interrupted by a phone call, while pouring some of the ingredients. Now she remembers what products she has used so far, their quantity and has the recipe in front of her. Help her finish her dish by writing a program that finds which products from the recipe need to be added, and their quantity. Bear in mind that Krisi has partly (less than they were required in the recipe) put some of the ingredients.

To make the meal even better, Krisi uses more products than the products given in the recipe and sometimes she uses one product more than once. Her recipe also may contain the same product more than once.

The products are given by their name and quantity in different cooking measurement units. The relation between the measurement units is given in the table below. The synonym of the measurement unit (if any) is given in the brackets. The original names and their synonyms mean the same unit.

| From                                       | To                             |
|--------------------------------------------|--------------------------------|
| 1 tablespoons (tbsps) = 3 teaspoons (tsps) | 1 gallons (gals) = 4 quarts    |
| 1 liters (ls) = 1000 milliliters (mls)     | 1 pints (pts) = 2 cups         |
| 8 fluid ounces (fl ozs) = 1 cups           | 1 quarts (qts) = 2 pints (pts) |
| 1 teaspoons = 5 milliliters (mls)          | 1 cups = 48 teaspoons (tsps)   |

All products from the input and in the output should be in this format: “{Quantity}:{Measurement unit}:{Product}”. All measurement units will be given and should be outputted in plural forms. All numbers will be between 1 and 125 000, inclusive and all decimal points will be presented as “.” (point).

# Input

- Read from the standard input

- On the first line you will be given the number **N** of the products in the recipe
- On each of next **N** lines you will be given one product in the described format
- On the next line (N+2) you will be given the number **M** of the products Krisi used so far
- On the next **M** lines you should read the products Krisi has already used.

- The case of the letters doesn’t matter (for example: “milk” and “MILK” are the same products).

- The input data will always be valid and in the format described. There is no need to check it explicitly.

# Output

- Print on the standard output
- You should output the ingredients from the recipe that Krisi hasn’t used so far and the ones she has already used but their quantity does not match the recipe (it is less than required)
-   The products must be ordered as they appear in the recipe, measured in the same measurement units as given in the recipe for the first time and with the same names as the first product appearance in the recipe
- See the examples below.

- All numbers must be rounded and printed with 2 digits after the decimal point (XXX.XX).

# Constraints

- **N** will be between 1 and 1000, inclusive. **M** will be between 1 and 1000, inclusive.

- Product names length will be between 1 and 50 and will contain only Latin letters and spaces.

# Sample tests

## Input


```
2
1:cups:Sugar
1.006:ls:Old milK
2
800:mls:old MILK
1.5:cups:sugar
```

## Output

```
0.21:ls:Old milK
```


# Input

```
2
12:ls:water
12000:mls:Water
1
12:cups:coffee
```

# Output

```
24.00:ls:water
```