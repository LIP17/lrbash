#!/bin/bash
# reading values from a file
# if IFS is not override, space, return and tab
# will all be treated as seperator
# and "NEW YORK" will be printed seperately
file="states"
IFS=$’\n’
for state in `cat $file`
do
echo "Visit beautiful $state"
done

# expected output
# Visit beautiful Alabama
# Visit beautiful Alaska
# Visit beautiful Arizona
# Visit beautiful Arkansas
# Visit beautiful Colorado
# Visit beautiful Connecticut
# Visit beautiful Delaware
# Visit beautiful Florida
# Visit beautiful Georgia
# Visit beautiful New York
# Visit beautiful New Hampshire
# Visit beautiful North Carolina