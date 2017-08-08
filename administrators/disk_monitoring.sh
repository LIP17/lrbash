#!/bin/bash

# check disk usage of root / and mail alert

#SPACE=`df | sed -n '/\/$/p' | gawk '{print $5}' | sed 's/%//'`
SPACE=100
if [ $SPACE -ge 90 ]
then
    echo "Disk space on root at $SPACE used" | mail -s "Disk warning"
fi

# using cron to make it running every day
# this will run everyday 0:30, 8:30, 12:30, 16:30
30 0,8,12,16 * * * disk_monitoring


