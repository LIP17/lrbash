#!/bin/bash

# take care, if you do not specify line, you delete everything
sed 'd' inputfile

# delete the 3rd line of file
sed '3d' inputfile

# delete from 3rd line to end of file
sed '3,$d' inputfile

# delete with 'pattern'
sed '/pattern/d' inputfile

# delete between two partterns, it will delete
# lines between start pattern and end pattern
sed '/pattern_start/,/pattern_end/d' inputfile

:' notice the once sed meet the start_pattern, it will start deleting
    if input is 
        pattern_start
        line1
        line2
        line3
        pattern_end
        pattern_start_but_donot_delete
        line4
        line5

    the output will be empty becasue patter_start_but_donot_delete will also trigger pattern open
'


