#!/bin/bash


function name([variables])
{
    statements
}

# function must be before all gawk script body, including BEFORE part

gawk '
function printprint()
{
    printf "%-16s - %s\n", $1, $4
}
BEGIN{FS="\N"}
{
    printprint()
}' input

# using function library
gawk -f library1 -f library2 ...
