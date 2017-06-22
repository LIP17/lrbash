#!/bin/bash

: '
    basic syntax: 
        gawk options program file
    
        if file is not defined, it will read data from STDIN

    option list
        -F fs: specify a file seperator for delineating data fields in a line
        -f file: specify the file to read program
        -v var=value: specify the default value of this var
        -mf N: specify the maximum number of fields to process in data file
        -mr N: specify the maximum record size in a file
        -W keywords: Specify the compatibility mode or warning level for gawk.
'

# $0 will read the whole line, $n will read the nth field of the line
# print the first field of each line of datainput
gawk '{print $1}' datainput

# different delimeter, delimeter is : now
gawk -F: '{print $1}' datainput

# define something to start, without reading data
gawk 'BEGIN {print "Hello World"} {print $0}'

# do something after reading all is also applicable
gawk 'BEGIN {print "Hello World"} {print $0} END {print "End!"}'

