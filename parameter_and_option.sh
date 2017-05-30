#!/bin/bash

echo The command entered is : $0 # $0 is the complete path of this script

name=`basename $0`
echo The command entered is : $name # this will not return the full path, but only the base of name

echo first parameter is : $1

echo tenth parameter is: ${10}

# $# is the total number of parameter
echo There were $# parameters

# ${!#} is the last parameter
echo the last parameter is ${!#}

echo "Read all parameter as single string : $*"
echo "Read all paramter as array : $@"

shift # shift parameter to left, and discard $1



