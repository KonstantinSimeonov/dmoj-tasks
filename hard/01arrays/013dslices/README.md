Problem 4 – 3D Slices
---------------------

You are given a **rectangular cuboid** of size **W** (width), **H** (height) and **D** (depth) consisting of **W** \* **H** \* **D** cubes, each containing an integer number. A cuboid can be **split into two sub-cuboids** by slicing it over some of the planes {x, y}, {x, z} or {y, z}. For example a cuboid of size {4 x 3 x 2} could be split into sub-cubes {4 x 3 x 1} + {4 x 3 x 1} or into {1 x 3 x 2} + {3 x 3 x 2} or by few other ways. The figure below shows few examples how we can slice a cube into two non-empty sub-cubes:

<img src="media/image1.png" width="681" height="107" />

The cuboid is given as layers of matrices holding integer numbers. The figure below shows a cuboid of size 4 x 2 x 3 (width = 4, height = 2, depth = 3):

<img src="media/image2.png" width="326" height="65" />

Your task is to write a program that finds in how many ways we can split the cuboid into two non-empty sub-cuboids such that the sums of the numbers in the obtained sub-cuboids are equal. For example the cuboid at the figure could be split into **equal-sum sub-cuboids** as follows:

<img src="media/image3.png" width="681" height="79" />

### Input

The input data should be read from the console. At the first line 3 integers **W**, **H** and **D** are given separated by a space. These numbers specify the width, height and depth of the cuboid. At the next **H** lines the colors of the cubes in the cuboid are given as **D** sequences of exactly **W** integers. Each of these sequences consists of **W** integers separated by a single space. The sequences of **W** integers are separated one from another by " **|** " (space + vertical line + space).

The input data will be correct and there is no need to check it explicitly.

### Output

The output data should be printed on the console.

On the first line of the output print the **total number of splits of the cuboid into equal-sum sub-cuboids**.

### Constraints

-   The numbers **W**, **H** and **D** are all integers in the range \[1…100\].

-   The integers in the cuboid are in the range \[-1000…1000\]

-   Allowed work time for your program: 0.5 seconds.

-   Allowed memory: 16 MB.

    1.  ### Examples

|                             |            |     |           |            |
|-----------------------------|------------|-----|-----------|------------|
| **Input**                   | **Output** |     | **Input** | **Output** |
| 4 2 3                       
                              
 3 4 1 9 | 1 2 3 8 | 1 5 6 7  
                              
 1 2 1 9 | 5 1 3 9 | 5 3 3 8  | 2          |     | 2 2 2     
               
    1 2 | 3 4  
               
    5 6 | 7 8  | 0          |


