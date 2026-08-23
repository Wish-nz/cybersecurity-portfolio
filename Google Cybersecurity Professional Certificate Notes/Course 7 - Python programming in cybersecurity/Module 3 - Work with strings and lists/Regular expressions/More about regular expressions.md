Basics of Regular Expressions

- Regular expressions (regex) are character sequences forming patterns used to search for specific text patterns like IP addresses or emails within strings.
- The `re` module in Python provides functions for working with regular expressions, with `re.findall()` being a key function that returns a list of all non-overlapping matches to a pattern.

Regular Expression Symbols

- **Character Type Symbols**: Symbols like `\w` (alphanumeric characters and underscore), `.` (all characters), `\d` (single digits), and `\s` (single spaces) are used to match specific types of characters.
- **Quantifier Symbols**: Symbols such as `+` (one or more occurrences), `*` (zero or more occurrences), and `{}` (a specific number or range of occurrences) are used to specify how many times a character or character type should appear in a pattern.

Constructing a Pattern

- Building a regular expression involves breaking down the desired pattern into smaller components and representing them with appropriate symbols.
- It is important to test regular expressions to ensure they accurately capture the intended information and avoid returning irrelevant data.

These symbols match a single character of a specific type.

| Symbol | Description                                                                                                          | Example Match                     |
| ------ | -------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| \w     | Matches any **alphanumeric character** (A-z, 0-9) OR an **underscore** (_).                                          | In "ID_A17", matches I,D,_,A,1,7. |
| \d     | Matches any **single digit** (0-9).                                                                                  | In "ID_A17", matches 1,7.         |
| \s     | Matches any **single whitespace** character (space, tab, newline).                                                   | Matches the space in "user 1".    |
| .      | Matches **any character** (letters, digits, symbols, spaces), except for a newline.                                  |                                   |
| \.     | Matches the **literal period character** (.). The backslash \ is necessary to escape the special meaning of the dot. |                                   |

```python
import re

re.findall("\d", "h32rb17")
```


### Symbols to quantify occurrences

Other symbols quantify the number of occurrences of a specific character in the pattern. In a regular expression pattern, you can add them after a character or a symbol identifying a character type to specify the number of repetitions that match to the pattern.

|Symbol|Description|Example|
|---|---|---|
|+|**One or more** occurrences. (e.g., \d+ matches 1,12,12345).||
|*|**Zero, one, or more** occurrences.||
|{n}|**Exactly n** occurrences.|\d{4} matches four consecutive digits (e.g., 1234).|
|{n,n}|Between **m (minimum) and n (maximum)** occurrences.|\d{1,3} matches 1,12, or 123.|