#!/bin/bash

# with nohup, it will ignore SIGHUP, and 
# when the terminal exit, this will still run
# and the output will be in nohup.out file
nohup echo 123 &

