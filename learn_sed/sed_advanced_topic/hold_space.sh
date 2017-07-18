#!/bin/bash

# hold spece command
:'
    h: copy pattern space to hold space
    H: append pattern space to hold space
    g: copy hold space to pattern space
    G: append hold space to pattern space
    x: exchange contents of pattern and hold spaces
'

:'
  by /first/, you save the line in pattern place, and using 'h'
  to copy the pattern space to hold space
'
sed -n '/first/{h;p;n;p;g;p}' text_emptyLineBeforeHeader



