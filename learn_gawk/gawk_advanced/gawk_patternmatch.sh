#!/bin/bash

# basic matching
gawk '/pattern/{do somthing}' inputfile

# matching with matching operator

# matching on given field, in this command
# filter by second field match the given pattern: start with "data2"
gawk 'BEGIN{FS=","} $2 ~ /&data2/{print $0}' data1

# negate the pattern matching
gawk 'BEGIN{FS=","} $2 !~ /&data2/{print $0}' data1





