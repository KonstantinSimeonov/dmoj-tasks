Coki is a very bright boy! He likes numbers a lot, but most of the time
he is pretty confused by them.

One day, Coki decided he wanted to be a shopping boy, i.e. a boy who
gets lists of products from people, buys the products, and delivers
them. Unfortunately for him, the owner of the supermarket was his
evil-genius twin Koci, who always cheats Coki and makes him sad. Also,
Coki loves numbers, but cannot use them\...

Help Coki not to be cheated by Koci!

You are given `N` products with their prices. You are also given `M`
lists of products. Your task is to write a program, which calculates the
total sum for each list of products.

# Input

You will receive an array of strings as only parameter of the
`solve(args)` function

-   Each array item will contain `N`, `N` products with prices, `M` and
    `M` lists of products
-   *Note*: see sample tests

# Output

Print to the standard output, i.e. with `console.log()` method

-   For each list, print its total sum
    -   With exactly 2 digits after the decimal point
        -   use `.toFixed(2)` method

# Constraints

-   10 \<= `N` \< 2<sup>18</sup>
-   3 \<= `M` \< 2<sup>21</sup>
-   Each list will have at most 2<sup>10</sup> products

# Sample tests

## Input
```
    const args = [
        "5",
        "milk 1.2",
        "orange juice 2.9",
        "icecream 2",
        "cake 5.1",
        "beer 1.2",
        "5",
        "2 beer, 3 orange juice",
        "milk, cake",
        "icecream, 2 cake",
        "icecream, icecream, 3 icecream",
        "5 orange juice, 3 orange juice, orange juice, orange juice"
    ];
    solve(args);
```

## Output
```
    11.10
    6.30
    12.20
    10.00
    29.00
```
