#!/bin/bash

# $? will get return value of last executed command

function test1 {
  read -p "Enter a value: " value
  echo "doubling the value"
  return $[$value * 2]
}
# notice 1: $? should follow immediately with the function call to 
# get the return value

# notice 2: the return value should be from 0 to 255

test1
echo "the value is $?"


# return method2: using backtick

function test2 {
  read -p "Enter a value: " value
  echo $[ $value * 2]
}

result=`test2`
echo "The new value is $result"

