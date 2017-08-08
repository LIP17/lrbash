#!/bin/bash

# tar to archive the whole dir to file
# -c create -f archive file 
tar -cf archive.tar /dir

# compress the archive file in tar.gz
gzip archive.tar

# create daily archive

DATE=`date +%y%m%d`
FILE=archive$DATE
SOURCE=/dir/dir
DESTINATION=/dir/dir

tar -cf $DESTINATION $SOURCE 2>/dev/null
gzip $DESTINATION




