#!/bin/bash

function testArrayInput {
    local newarray
    # have to do this disamble, or you will
    # have only the first element of array
    newarray=(`echo "$@"`)
    echo "The new array value is: ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
testArrayInput ${myarray[*]}

function testArrayOutput {
    local originalArr
    local newarr
    local elements
    originalArr=(`echo "$@"`)
    newarr=(`echo "$@"`)
    elements=$#
    for (( i = 0; i < $elements; i++ ))
    {
        newarr[$i]=$[ ${originalarray[$i]} * 2]
    }
    echo ${newarray[*]}
}

myarray=(1 2 3 4 5)
echo "THe original array is: ${myarray[*]}"
arg1=`echo ${myarray[*]}`
result=(`testArrayOutput $arg1`)
echo "The new array is: ${result[*]}"
