#!/bin/bash

: '
    basic syntax
        sed options script file
'

# sed is stream editor, it will process input line by line, 
# and print out process result immediatly, without waiting for 
# processing the whole file
# 
# default input of sed is STDIN and output is STDOUT

# sed option
# -e script/command
# -f file
# -n do not produce output for each command, but wait for the print command

# sed with simple sed command, replace "Test" with "Test Finished"
echo "Test" | sed 's/Test/Test Finished/'

# sed with simple sed command, but on file
sed 's/Test/Test Finished/' inputfile

# sed with script
sed -e "s/Test/Test Finished/; s/A/A Finished/" inputfile

# sed with file, put command by line in script file
# s/A/B/
# s/C/D/
sed -f script1 inputfile


