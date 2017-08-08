#!/bin/bash

gawk 'BEGIN{x=4; x = x * 2 + 3; print x}'

# define variable outside
# print the second field of every record, define n outside of script
gawk 'BEGIN{FS=","}{print $n}' n=2 inputfile

# put -v before so you can see the passed in variable, if not, you cannot see it
# when the script running

gawk -v n=3 'BEGIN{print "The starting value is n", n}'
