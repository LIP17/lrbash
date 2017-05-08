#!/bin/bash
# using double brackets 
# match string with pattern match

if [[ $ USER == r*]]
	then echo "USER"
else echo "not valid"
fi