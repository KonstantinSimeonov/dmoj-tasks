King Giro invented a new type of Coke, which he called Gola. It had an intoxicating effect.

Goshho tried the Gola and became drunk. Worse, he started thinking he was a browser (you know, Google Chrome, Firefox, etc.) and decided he had to load resources.

Based on dependencies, find out how the Gosho browser will load the resources. 


<span id="rules">The loaded resources must be printed following the rules:</span>
    - If resource Y depends on resource X, **Y must be printed after X**.
    - If resources X and Y are equally important from the above rule, print the one smaller lexicographically
        - i.e. if X < Y print X then Y, else Y then X

# Input

- Read from the standard input

- On the first line you will find the number **N**
    - The number of all commands

- The following **N** lines will have commands
    - Each command will be in the format **F needs S**
      - Resource F must be loaded first in order to load resource F

# Ouput

- Print on the standard output
- Print the resources, based on the <a href="#rules">rules</a>
    - All on the same line, separated by a single whitespace

# Constraints

-   N &lt;= 2000

# Sample tests


## Input

```
8
index.html needs main.css
main.css needs sub1.css
index.html needs main.js
main.css needs sub2.css
index.html needs logo.png
main.js needs player.png
main.js needs partial.html
partial.html needs partial.js
```

## Output

```
index.html logo.png main.css main.js partial.html partial.js player.png sub1.css sub2.css

```