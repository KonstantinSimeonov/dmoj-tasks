Problem 3 – Bit Shift Matrix
----------------------------
<img src="data:image/png;base64,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" />

You are given rectangular matrix. The matrix is filled with numbers that are power of 2, as follows:

-   The bottom left corner holds the value 1

-   The next cell above holds value of 2, the next cell above holds of 4, etc…

-   The second cell the bottom row holds a value of 2, the cell next to it holds a value of 4

You have a pawn on the field. The pawn can only move to the cells that directly above, below it or right/left of it. We have four directions UP, DOWN, LEFT, RIGHT.

<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFYAAABXCAIAAAARaCUFAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4QseESAao9hnpQAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmUHAAAIAElEQVR42u2be1QU1xnA7+68YHdnXRYEBI1CQ1lAHuWs+MJWCRio1VD0BEyARjfF5znJ0Ri1atUaPXp6bIlNTmgsVmmMiuKRALohNUZYxBiiEXKUROICosvhDbvAzpP+MWRKAMkCE8a4c//ambn3u9/3m2/u/b5778paW1sRFAGClqz3sgwGg7BiKZLKzs5eu26tsKpSJCUHTl8kBBICCYGEQEIgIZAQSAgkBBICCYGEQELwJCGorbv/ianQqREUXM3NOnu4p6fbSRE0NTcay/LNjdXFpgJchTsdAlyF5396prnrgRLDTxuPWywWp0PwnfleQckZhYsaguD7lq+LSvLEcgS5WC7wcdlHDS1m7hJDFLnFojmCOAhqH9y/cOWUWuHGXUIQbG6sLrhyVhRHkIviAsWlhebGaoohuDsUQ7hiinOXc+obap0CgcViOXc5BwAwO3iRu9qLYojo0Od93f2+aags/EyEEUE+8S5QVJL3TUPluqRtf9mQ6Yope4meueG/PrL9xJzgmA8Ks2of3H/KEVgsFmPZhUMb/7XJsBPDMJqmAQAERQT4645sPx4dGZdrzJloBAiKCOt7nLRht5JwFV5179ZrqTtSlqZzd2AY5p96eXrvWn/o2WmBNqttqEqcQMFVRVAEznovS3CuJpPpcY967N0e2snXr1YAABiWbu9sdcUUZeVl3RaGpEiuzt0vj6EoOiqx4ylwamqq4EJJknycWAzDCIIAAMhlcltvV3md0dJRGxoakvb7NO7+2MSOCwGGYYJvq6IoOoJY/j6CIgiMAABcMFetVmu1WUeQSZEUiqIqXCWsqtK26hOQLEMQzPbRdqLXeRFIXiAhAACGYAAAzdJOikAO9ffOsqyYr0FYcXfvVTEs43h9grTb7ATLONqk4VFdY8sjfdjcJ9ELzPU1+/6xNafgaKBfiMPTARQTlZAa90ed/8yRgwK+TPWZfuvujU0HX7319RdPkBfcM1fnXz6TX3LS0833/T25jgdaTc2NUbrfxOh/5zvVx/HuVq/YuOWvawz7li2OSkpJWBURrBcTgbm+Jq/4pLH8fJutyX3SlLc2Hpkxzd/B9wkA2L1rL/dDpVIdOHDAQXaaSZpdaw81HWgsvnG+7PYn0RHxyfHp4wEBj9N4m73DBVW6YooNK94MCghta2vjgvkRAn7eVJIkd+3eERoSHhcXd/PmzdjYWA4fRVLDjBoEQZIkRVJtbW1uGvfXU3dsf2cDRdmvfJlv+so4HhDw2NyeN94FVQIAEAg7bTx+2nicq2Pt7ry2++IwATlDaHHPv2/N5kN9opfiqGk0Gs7+hkd12zI3cOsIg4q1u/PatouDsmxOAR7E8tiV4Tr9qLKe0SGwWW0nC49+ZPoQhVGub758+/A229evt9JFbemo5S/5QjOsh9qLYggA+hFkZmYCABITEwN1gf2YaKrmYZWd6hnau9JF/bC9pn8Yl8H86isHgmKIS9dPtXc178w4ONVnuuNGycZwAPerOxWnL/279LaRYWgexMvxa9QqTX9if6103uz5/LT/g2QZwZYsXM71aFhtyMjIiIyMHJgm2qy2opK8oQ1Zhi3//Nr8edH9HxFFnLuc02lr45yLYeiIgHnJ8a9ER8aMyhyKpMYyFkQE6yOC9QNBQBBs7e7aZNjJVWiv7125bNXjVnh4awmC0Gg0g9JkFa56NXnjsK06HxL8o/+cP9ppaxtk/I9m3ALPCDyIU0XHTFUfHyvKnKz1Wp+6mR/SflSb9D+k+/r6jsBo0OviHuEqvLjk4sETW1mWiQxcMND4MdgvQFwwEMS7Z/dP9Z6+LHaFg22XLFly59uqanOVt4ePg18vrsIr79za+8/Xg6ZHpi9bO07jhQyQF0QtigjWV1SWXzJdmOHzCwdb2e32wyf2mqqK17yw5U/r9ztihsViySs+uTlt78Ko58dvvJAIOD30YXPDdfr2zlbHA2QAAAzJ5RDk6OjFEOte2uztOUUQ43+SNAlBEc/J3g5WZr7PjmR9MgebuGncHzdY/CyTZZZhaYYGACAIIqIa0qqRhEB0BAxD88tnzusFchkMw6KOBRO5rTqo2rBJxPATDYI8PduqP/gKWLqptdEVU9z44gbZ/DZFkwAAFEH5/dWxiR11XDCR26pymfzm3c9/OSPIbZI7AKC9s7X0u0JLR23UrKiU36YRBIFhWE1dtSuq9J0ybeiiy9OwrYqrcK/mKX/L2bdl9Z4Z0/y51w4AQBFMq9UCAIxXC0or/rttzVtDP6WnZFvVarMG+OmUrqqMPS9WVF5HYHTgEYv3Pzzy5tuG+AWJE3zcSIQZISVhVWN7/WuH0os+y6NpGpZDXbaO3Zlv7D/xRtysxIhgvbDx70TnCI6UAD/d0vkrcz/NPvzBnyEIVriozxQfs9k7PNReyfGvOEtc8EJMslrhBn0fEdEsBQB4btbSoIBQZ0EQFBC6MDLBTv7/DL4LqnwxPt25osMVi9P4pVc72R0/JynQP8S5EMwMjJgzcxHnCC6ocvniVLE0EfP/CCkJqyAI7rF3LY1OCfDTOR0Cq80aEayfHbwIQxRJcS+JmCaJmaXiKjzpuZd9Jz/j98yzTorAarPODo/+VcgscbN1WNzuERQRPEP5+S2ZiL9mIyGQEEgIJAQSAgmBhEBCICGQEEgIJASDMsVhz/yOp5Ak+ROJFVwmRZOysLAwwbm2tLR4eHiMxSfl8hH+oTJmsSMXWV9fn5N/CP8Di7SGW/aBNn4AAAAASUVORK5CYII=
"/>

Given that initially the pawn starts at the bottom left corner and a list of cells that the pawn must reach calculate the sum of the cells that the pawn has to go through.

The value of each cell is calculated only once, i.e. if the pawn visits the same cell more than once, its value is added to the result only the first time (the value is collected).

**The top row is at position 0, the bottommost row is at position ROWS – 1.**

The pawn goes from one cell to the other, following the rules:

-   First go to the target column

-   Second go to the target row

**Example**:

<img src="data:image/png;base64,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
" />

The pawn collects values: 1, 2, 4, 8, 16, 32, 16, 8, 4, 8, 16, 32, 64, 128, 256 and 512. Their sum is 1107.

### Input

The input data is given at the standard input, i.e. the console

On the first and the second lines you will find **the dimensions of the field** **R and C**

On the third line you will find the number **N**, **the number of moves**

On the fourth line you will find the CODEs, **decimal numbers** that represents the positions from the path of the pawn. They will be separated by a single space. The position is encoded as follows:

-   A coefficient is calculated, COEFF = MAX(R, C)

-   ROW = CODE / COEF

-   COL = CODE % COEF

The input will be valid, in the specified format, within the constraints given below. There is no need to check the input data explicitly.

### Output

Print the sum of cells contained in the path of pawn

### Constraints

-   **R** will always be between **1 and 100**

-   **C** will always be between **1 and 75**

-   **N** will always be between **1 and 1000**

-   Allowed working time for your program: 0.1 seconds.

-   Allowed memory: 16 MB.

    1.  ### Example

|           |            |                 |
|-----------|------------|-----------------|
| **Input** | **Output** | **Explanation** |
| 5         
            
 6          
            
 4          
            
 14 27 1 5  | 1107       | In the example  |


