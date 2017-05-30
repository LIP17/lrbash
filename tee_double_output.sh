#!/bin/bash

# this will print 1 in both STDOUT and output file
# notice tee will overwrite every time
echo 1 | tee output

# this will append
echo 1 | tee -a output
