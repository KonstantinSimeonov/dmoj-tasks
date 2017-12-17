# Time for bits

## Description

In a parallel universe, computers work a little stranger than ours here. Again, we have zeros and ones everywhere, but the processing time is different for each bitwise operation:
- For **change** from 0 to 1 or from 1 to 0 - **1** millisecond
- For **adding 1** - **1.2** milliseconds
- For **adding 0** - **1.1** milliseconds
- For **deleting 1** - **0.8** milliseconds
- For **delete 0** - **0.9** milliseconds

Your task is to find the minimum time needed for this type of processor to convert a combination of zeros and ones into another.

## Input data

Input data will be read from the console.

- On the first line of the input you will read the combination of zeros and ones you have to convert.
- On the second line of the input, you will read the combination of zeros and ones to which the processor must reach as the final result of the conversion.

### Output data

Output data will be printed on the console.

- On the single line you need to print the **minimum CPU time** to convert the zeros and units.

## Limits

- Zero and unit combinations will contain between **1** and **200** characters, inclusive.
- The combinations will contain only zeros and units.

## Examples

| Input            | Output |
| ---------------- | ------ |
| 0<br/>1          | 1      |
| 01<br/>1         | 0.9    |
| 0<br/>10         | 1.2    |
| 0110<br/>1101001 | 4.4    |
