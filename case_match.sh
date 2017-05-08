#!/bin/bash
#using case command

case $Var in 
pattern1 | pattern2) command1;;
pattern3) command2;;
*) default_command;;
esac