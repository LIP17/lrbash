#!/bin/bash

# '^' caret char will locate and match at the beginning of a string

# this will print nothing, because book is not at beginning
echo 'This book is good' | sed -n '/^book/p'

# this will print
echo 'Book is good' | sed -n '/^book/p'

# caret char in the middle of string will mean nothing but just plain char

# '$' will anchor to the end of string

# remove blank line in file
sed '/^$/d' inputFile
