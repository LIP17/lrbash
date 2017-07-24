#!/bin/bash

# [address]t [label]

# test will jump to a label based on the outcome of a substitution command
# when it find the pattern, it will skip the command after 't'

sed '{
s/first/starting/
t
s/line/test
}' test_testcommand_input

# Remove comma using test command
# when there is no more substitution, no more branch
echo "This, is, a, test, to, remove, commas." | sed -n '{
:start
s/,//1p
t start
}'
