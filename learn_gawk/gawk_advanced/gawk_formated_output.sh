#!/bin/bash

# gawk share the string format similar to C
printf "format string", var1, var2

# eg
gawk 'BEGIN{x = 10 * 1000; printf "The answer is %d\n", x}'
