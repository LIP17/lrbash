#!/bin/bash

# n: single line next: move the next line to processing area
# N: multiple line next: add the next line to processing area

# delete the next line of the pattern
sed '/pattern/{n;d}' text_input

# combine two lines for processing
# in this eg, we combine two lines and replace \n with !!!
sed -n '/this/{N;s/\n/!!!/p}' text_input_multipleLineNext

# include next line and delete the first line 
# if next line match some pattern
# the empty line will be deleted if the next line has 'header'
sed '/^$/{N;/header/D}' text_emptyLineBeforeHeader


