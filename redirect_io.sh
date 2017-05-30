#!/bin/bash

# every shell has maximum 9 file descriptor

# 2 is file descriptor for error file
ls -al not_exist_file 2> logerror

# redirect STDOUT and STDERR to the same file
# but group error together with highest priority

ls -al not_exist_file &> log_all


# temporary redirect 
# now this is a STDERR output
echo "ERROR" >&2

# exec will start a new shell
# all STDOUT now go to testoutput
exec 1>testoutput


# redirect file to STDIN
exec 0< testfile

# create custorm file descriptor

exec 3>testoutput1

echo "test custorm file descriptor" >&3

# close file descriptor

exec 3>&- 

# redirect and append to file

exec 3>>testfiletoappend
