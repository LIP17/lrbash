#!/bin/bash

# sed y commmand to change character by mapping
# the inchar and outchar should be same length of characters
# and sed will replace correspondingly

sed 'y/inchars/outchars/' inputfile

# notice sed is a global default, so it will change every character!
