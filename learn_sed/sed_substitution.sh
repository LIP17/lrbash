#!/bin/bash

# sed subsititution

: '
    sed substitution syntax
        s/pattern/replacement/flag
    sed flag option: 
        g: global, change all the occurence of the pattern
        number: change the n-th occrence of the pattern in a sentence
        p: print the changed line in a file
        w file: write the substitution to a file
'

# do not need escape for every symbol
# in this eg, you do not need to escape all path 
sed 's!/bin/bash!/bin/csh/!' /etc/passwd
