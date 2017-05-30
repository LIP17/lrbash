#!/bin/bash


# make a temp file in /tmp with random suffix
mktemp -t testfile.XXXXX

# make a temp dir
mktemp -d testdir.XXXXX
