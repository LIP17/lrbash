#!/bin/bash

# priority from -20 Highest, to 20 lowest

# use nice to set priority of job, but cannot change it

nice -n 10 ./runscript.sh 

# use renice to change priority

renice $PRIORITY -p $PROCESS_ID

: '
 you cannot renice that you do not own
 you cannot renice to a higher level
 you can renice any process to any priority if you were root user
'
