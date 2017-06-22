#!/bin/bash

# limit address or text pattern for command

# [address]command
: '
    address {
        command1
        command2
    }
'
# command on line 2
sed '2s/cat/dog/' data1

# command on line 2 to end
sed '2,$s/cat/dog' data1

# multiple command on one line by group
sed '2{s/aaa/bbb/;s/c/d}' input

# if you change the pattern in subsequent way, things may not be expected
# if you want to change aaa-bbb-ccc to bbb-ccc-ccc
# code snippet 1: 
sed '{s/aaa/bbb/;s/bbb/ccc}' 
# input aaa-bbb-ccc, output will be ccc-bbb-ccc
# notice, after aaa -> bbb, we change this bbb to ccc. so the commmand in group is executed sequentially.
