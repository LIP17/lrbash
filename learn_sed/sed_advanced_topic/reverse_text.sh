#!/bin/bash

:'
    1!G: For the first line of the file, hold space wont be appended to pattern
         but other lines will append to hold space
    h: for every line, copy pattern space to hold space
    $p: only apply for the last line, print out everything in pattern space now 
'
sed -n '{1!G;h;$p}' inputFile

