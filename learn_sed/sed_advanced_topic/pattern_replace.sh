#!/bin/bash

# use & to recall the pattern matched words
# cat and hat will be kept in place and wrapped in ""
echo "The cat sleeps in his hat." | sed 's/.at/"&"/g'

# replace single words pattern
# use \(\) to define substring component, and usinng \1, \2 ... to apply different change

# output will be "That cat is pretty"
echo "That furry cat is pretty" | sed 's/furry \(.at\)/\1/'

# output will be 1,234,567
echo "1234567" | sed '{
:start
s/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/
t start
}'


