#!/bin/bash
# change whole line syntax
sed '[address]c\what you want to change' inputfile

# change line by pattern
sed '/pattern to change/c' inputfile

# notice, range will cause unexpected deletion because it
# will replace multiple line into 1 line
sed '2,3c/pattern to change/' inputfile
