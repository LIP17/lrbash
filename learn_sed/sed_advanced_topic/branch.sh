#!/bin/bash

# [address]b [label]
# if do not specify the label, it will branch to the end of table

# using this, the 2 and 3 line will be skipped by this change 
sed '{2,3b;s/This is/Is this/;s/line./test?/;}' test_branch_input

# using label for jump to, label should be string less than 7 chars
# for the line with pattern 'first', it will jump to :lable1
sed '{
/first/b lable1
s/ is/ might be/
s/line/test/
:lable1
s/line/test
}' test_branch_input

# with jump label, for loop is possible
# for the "/,/b start" line, it is required to have to match the pattern of a comma
# otherwise there will be infinite loop
echo "This, is, a, test, to, remove, commas." | sed -n '{
:start
s/,//1p
/,/b start 
}'

