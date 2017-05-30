#!/bin/bash

# there are 26 job queues available from a to z

# at -f filename time, run this once at scheduled time
at -f filename 16:00

# atq list all jobs 
atq

# remove jobs

atrm #jobnumber

# batch will run the scheduled work 
# based on the current workload of system

batch -f filename time

# cron: building a long term scheduled job

# list all cron job
crontab -l

# anacron: run job that missed due to some reasons


