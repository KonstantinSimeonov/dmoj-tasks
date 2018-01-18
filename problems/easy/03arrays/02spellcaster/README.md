A very important rediscovery was made during this competition. If you were to rearrange the letters in a spell, it becomes several times more powerful! But not just some random rearrangements, no, it must be a very precise and well crafted piece of magic, using an ancient formula by a legendary spell caster. For that very reason, you must do what nobody has done in millennia ­ craft a rearranged spell! That is the third and final challenge in this year's Triwizard championship! To achieve this wizardry, you need to follow a two step algorithm.

# Step 1 - Extracting the characters

You are given a sentence that consists only of words of **Latin characters** (no punctuation, no special symbols or numbers). First, you need to turn that sentence into a sequence of characters in the following way: until all words disappear, the last letter of each word (if exists) is removed from the word and is appended to the output sequence of letters.

For example, let's say you receive the sentence **"Fun exam right"**. You first split into 3 words: **["Fun", "exam", "right"]**. Then the last letters are extracted: ["Fu~n~", "exa~m~", "righ~t~"] results into **"nmt"**. And you continue as such:

1. ["Fu", "exa", "righ"] => "nmtuah"
2. ["F", "ex", "rig"] => "nmtuahFxg"
3. ["", "e", "ri"] => "nmtuahFxgei"
4. ["", "", "r"] => "nmtuahFxgeir".

After the extraction is finished, you are left with the sequence **"nmtuahFxgei"**.
It is now time to use that into the next step.

*NOTE*: Completing just step 1 of this task does not reward any points

# Step 2 - Moving the characters

The next step in the ancient spell is to move each letter (from positions 0, 1, …, n­1) to the right **N** times. The number **N** is the position of the letter in the Latin alphabet regardless of its casing ('a' => 1, 'b' => 2, …, 'z' => 26). When a letter is moved to the right, if it is the last letter of the sequence, its next position is the first position in the sequence, just before all the letters.

The moving of letters starts from the sequence you reached in **step 1**. In the current example, that is **"nmtuahFxgeir"**. First, the letter **'n'** at position **0** is moved right **14 times**: **"nmtuahFxgeir"** => **"mtnuahFxgeir"**. Then the letter **'t'** at position **1** is moved right **20 times**: **"mtnuahFxgeir"** => **"mnuahFxgetir"**. Then the process continues:

"mnuahFxgetir" => "mnahFxgetiru" => "mnaFxgetiruh" => "mnaFxgetiruh" =>
"gmnaFxetiruh" => "gmnaFxtiruhe" => "gmnaiFxtruhe" => "gmrnaiFxtuhe" =>
"gmrnaiuFxthe" => "gmrnaihuFxte" => "gmrneaihuFxt"

Finally, you are left with **"gmrneaihuFxt"**, which is the result.


# Input

- Read from the standard input
- On the single line, find the sequence of words
  - The words are separated by a whitespace

# Output

- Print to the standard output
- On the single line, print the result

# Constraints

- The input data will always be valid and in the format described
- Each word will consist of only Latin letters
  - No symbols or numbers

# Sample tests

## Input

```
Telerik Academy
```

## Output

```
AymlTiedkaerec
```

## Input

```
Hi exam
```

## Output

```
maiHex
```

