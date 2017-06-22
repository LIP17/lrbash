#!/bin/bash

# read from file and insert into line
# append all line from inputdata after line 3
sed '3r inputdata' inputfile

:'
      Would the following people:
      LIST
      please report to the office.

'
# this will read from the template above, 
# append after LIST, and then delete the LIST line
sed '/LIST/{
r datafile
d
}' templatefile
