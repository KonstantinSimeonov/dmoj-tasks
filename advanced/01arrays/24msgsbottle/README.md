# Messages in a Bottle

## Description
In a warm, sunny day Andrew found a bottle near the sea. It was a very special bottle, containing not one, but two messages. The first message contained a big sequence of digits (0-9). “This must be a secret code”, Andrew thought. And he was right. After seeing the second message everything became clearer. The second message said something like this: “A123C11B98”. Another idea struck Andrew: “Hmm may be this is the cipher, used for creating the secret code”. And again he was right.

An alphabetical message, containing only capital English letters, is encoded with the given cipher. For every letter in the original message it is replaced by the given sequence of digits in the cipher.

For example an original message ABC with a cipher A123C11B98 will be encoded as 1239811.

Write a program that for a given secret code from the first bottle message and a given cipher from the second bottle message finds all possible original messages that can be encoded to the given secret code.

## Input
- The input data should be read from the console.
  - On the first input line there will be the secret message (the sequence of digits).
  - On the second input line there will be the cipher used for encoding the message in the given format: “{LetterX}{CodeForX}{LetterY}{CodeForY}…” where every LetterX from the original message will be encoded with CodeForX in the secret code. One letter will have only one unique representation.
- The input data will always be valid and in the format described. There is no need to check it explicitly.


## Output
- The output data should be printed on the console.
  - In the first console line you must print the number of all possible original messages that can be encoded to the given secret code. And these messages should be printed in the next output lines sorted alphabetically. See the examples bellow.


## Constraints
    • The given secret code will contain no more than 12 digits.
    • The cipher will be no longer than 180 symbols, containing only capital English letters and digits.
    • The number of original messages (the answers) will be no more than 2048.
    • Allowed working time for your program: 0.1 seconds. Allowed memory: 16 MB.

## Sample Tests
| Input                     | Output | Explanation    |
| ------------------------- | ------ | -------------- |
| 1122<br/>A1B12C11D2       | 3      | AADD, ABD, CDD |
| 778<br/>Z123A7787X666Y234 | 0      |                |
