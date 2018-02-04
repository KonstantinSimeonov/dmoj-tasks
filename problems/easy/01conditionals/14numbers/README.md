Coki loves numbers. He also loves operations with them.

Since the regular arithmetic operations are too mainstream for him, he
decided he wants a brand new calculator.

The calculator supports the following operations:

-   `set NUMBER`
-   Sets the current value to number
-   `front-add DIGIT`
-   Adds the digit DIGIT to the front (at the leftmost)
-   `front-remove`
-   Removes the first (the leftmost) digit
    -   does nothing if there are no digits
-   `back-add DIGIT`
-   Adds the digit DIGIT to the back (at the rightmost)
-   `back-remove`
-   Removes the last (the rightmost) digit
    -   does nothing if there are no digits
-   `reverse`
-   Reverses the digits of the current number
-   `print`
-   Prints the current number
    -   prints an empty line if there are no digits
-   `end`
-   Stops the program

Sadly, Coki is not smart enough to implement the calculator.
Pleeeeeease, help him, he is annoying!!

# Input

You will receive an array of strings as only parameter of the
`solve(args)` function

-   Each array item will be one of the operations

# Output

Print to the standard output

-   For each `print` command, print the current value of the number on a
    separate line

# Constraints

-   The commands will be less than 2<sup>20</sup>
-   The number can be very very **very** big, i.e. 10<sup>10000</sup> is a
    possible value

# Sample tests

## Input 
```
set 2
print
front-add 1 
print 
back-add 2 
print 
front-remove 
print 
set 4 
print 
decrease 
print 
front-add 1 
print 
back-add 3 
print 
reverse 
print 
end

```

## Output
```
2
12
122
22
4
4
14
143
341
```
