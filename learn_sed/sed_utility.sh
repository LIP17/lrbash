#!/bin/bash

# add empty line after each line
sed 'G' inputdata

# add empty line after each line, if the line already has
# blank line after, delete it first and append a new one
sed '/^$/d;$!G' inputdata

# add line number before each line
sed '=' inputdata | sed 'N;s/\n/ /'

# delete extra blank lines
# /./ part is line range match, . match any line with at least 1 char, and 
# the end address in the range match a blank line, lines within range is not deleted
sed '/./,/^$/!d' inputdata

# delete leading blank lines
sed '/./,$!d' inputdata

# delete traiing blank lines
sed '{
:start
/^\n*$/{$d ; N; b start}
}' inputdata

# remove html tags
sed 's/<[^>]*>//g;/^$/d' inputdata



