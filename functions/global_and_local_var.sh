#!/bin/bash

# cautious about the access scope of global variable

function func1 {
    # this temp will override global temp
    # and may lead to unexpected update of variable
    temp=$[ $value + 5]
    result=$[ $temp * 2]
}

temp=4
value=6

func1
echo "The result is $result"
if [$temp -gt $value]
then
    # because global temp is overrided, 
    # we will get here 
    echo "temp is larger"
else 
    echo "temp is smaller"
fi

# another example using 'local'

function func2 {
    # use local here to prevent unexpected override
    local temp=$[ $value + 5]
    result=$[ $temp * 2]
}
