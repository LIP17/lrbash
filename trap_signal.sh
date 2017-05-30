#!/bin/bash

# trap command signals
# when get listed signals, run the command
trap "echo trapped" SIGINT SIGTERM

sleep 1000

# trap exit signal
trap "echo exit" EXIT

# remove trap signal
# notice, if the script is interupt before
# this remove, this remove will not work
trap - EXIT
