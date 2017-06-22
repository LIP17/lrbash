#!/bin/bash

# In regex, space ' ' count as a character, so 'c t' will match regex 'c.t'

# BRE Special Character Class
:'
[[:alpha:]] Match any alphabetical character, either upper or lower case.
[[:alnum:]] Match any alphanumeric character 0–9, A–Z, or a–z.
[[:blank:]] Match a space or Tab character.
[[:digit:]] Match a numerical digit from 0 through 9.
[[:lower:]] Match any lower-case alphabetical character a–z.
[[:print:]] Match any printable character.
[[:punct:]] Match a punctuation character.
[[:space:]] Match any whitespace character: space, Tab, NL, FF, VT, CR.
[[:upper:]] Match any upper-case alphabetical character A–Z.
'

# use ? mark to mark 0 to 1 appearance of a char

# use {# of appearance} or {min number of appearance, max number of appearance}

# use | as logical OR to for independent match pattern 
pattern1 | pattern2

# use () to group expression like character
# will match this pattern as 0 to 1 appearance
(pattern)? 

