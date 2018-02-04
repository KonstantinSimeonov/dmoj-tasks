You are implementing a game engine. Your game has different kinds of units, which have name, type and attack. The player can create (add) new units, find all units of certain type and find his/her most powerful units. Sometimes a unit is destroyed and it should be removed from the game.

You are given a sequence of commands that must be implemented:

- **add UNIT_NAME UNIT_TYPE UNIT_ATTACK** - adds new unit to the game
  - **UNIT_NAME** can be any unique sequence from 1 to 30 characters
  - **UNIT_TYPE** can be any sequence from 1 to 40 characters and may not be unique  
  - **UNIT_ATTACK** can be any integer between 100 and 1000, inclusive
  - Print "**SUCCESS: UNIT_NAME added!**", if the unit is added successfully
  - Print "**FAIL: UNIT_NAME already exists!**", if the unit already exists
- **remove UNIT_NAME** - removes an existing unit with UNIT_NAME from the game
  - Print "**SUCCESS: UNIT_NAME removed!**", if the unit was removed successfully
  - Print "**FAIL: UNIT_NAME could not be found!**", if the unit does not exist in the game
- **find UNIT_TYPE** - finds the top 10 units, first ordered by attack in descending order and then by their name in ascending order
  - Print the results in the following format "**RESULT: UNIT, UNIT, UNIT**" where UNIT should be printed in the format "**UNIT_NAME\[UNIT_TYPE](UNIT_ATTACK)**". If no units are found just print "**RESULT: **" (ending with one space)
- **power NUMBER_OF_UNITS** - prints the top NUMBER_OF_UNITS most powerful units currently in the game in the same format as the "**find**" command (inside joke: this command should have been "POWER OVERWHELMING!"). If there are less units than requested just return them.
- **end** - marks the end of the commands and no other commands will follow afterwards

# Input

- The input data should be read from the console.

- The input consists of a sequence of commands, each at a separate line, ending by the command "**end**".

- The commands will be valid (as described in the above list), in the specified format, within the constraints given below. **There is no need to check the input data explicitly.**

# Output

- The output data should be printed on the console.

- For each command from the input sequence print at the standard output its result as a single line.

# Constraints

-   All **UNIT_NAME** and **UNIT_TYPE** will consist of letters and digits only. No spaces are allowed.
-   The total number of lines in the input will be in the range [1 … 100 000]

# Sample tests

## Input

```
add TheMightyThor God 100
add Artanis Protoss 250
add Fenix Protoss 200
add Spiderman MutatedHuman 180
add XelNaga God 500
add Wolverine MutatedHuman 200
add Zeratul Protoss 300
add Spiderman MutatedHuman 180
power 3
find Protoss
find God
remove Kerrigan
remove XelNaga
power 3
find Kerrigan
find God
end
 ```

## Output

```
SUCCESS: TheMightyThor added!
SUCCESS: Artanis added!
SUCCESS: Fenix added!
SUCCESS: Spiderman added!
SUCCESS: XelNaga added!
SUCCESS: Wolverine added!
SUCCESS: Zeratul added!
FAIL: Spiderman already exists!
RESULT: XelNaga[God](500), Zeratul[Protoss](300), Artanis[Protoss](250)
RESULT: Zeratul[Protoss](300), Artanis[Protoss](250), Fenix[Protoss](200)
RESULT: XelNaga[God](500), TheMightyThor[God](100)
FAIL: Kerrigan could not be found!
SUCCESS: XelNaga removed!
RESULT: Zeratul[Protoss](300), Artanis[Protoss](250), Fenix[Protoss](200)
RESULT:
RESULT: TheMightyThor[God](100)
```
