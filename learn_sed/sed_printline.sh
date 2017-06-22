#!/bin/bash

:'
    p: print line
    =: show line number
    l: list a line
'

# only print the line wiht pattern
sed -n '/pattern/p' inputfile

# print line within range
sed -n 'rangestart,rangeend/p' inputfile

# use sed to print a line before and after change
# this will print before you change the line, and then print after change the line
sed -n '/3/{
p
s/original/changed/p
}'

# l (list) command will show all the ascii symbols in stream, with ascii code or others
sed -n 'l' inputfile


