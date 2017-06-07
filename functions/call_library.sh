#!/bin/bash
# use dot operator to include library
# another way is using "source"
# source ./library/math.sh
. ./library/math.sh

result=`addem 10 15`
echo $result


