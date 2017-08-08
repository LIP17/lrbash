#!/bin/bash

# math
: '
atan2(x, y) The arctangent of x / y, with x and y specified in radians.
cos(x) The cosine of x, with x specified in radians.
exp(x) The exponential of x.
int(x) The integer part of x, truncated toward 0.
log(x) The natural logarithm of x.
rand() A random floating point value larger than 0 and less than 1.
sin(x) The sine of x, with x specified in radians.
sqrt(x) The square root of x.
srand(x) Specify a seed value for calculating random numbers.
'

# bitwise manipulation
: '
 and(v1, v2) : Performs a bitwise AND of values v1 and v2 .
 compl(val) : Performs the bitwise complement of val .
 lshift(val, count) : Shifts the value val count number of bits left.
 or(v1, v2) : Performs a bitwise OR of values v1 and v2 .
 rshift(val, count) : Shifts the value val count number of bits right.
 xor(v1, v2) : Performs a bitwise XOR of values v1 and v2 .
'

# string manipulation
: '
asort(s [,d]) Sort an array "s" based on the data element values. The index
values are replaced with sequential numbers indicating the new
sort order. Alternatively, the new sorted array is stored in array
d if specified.

asorti(s [,d]) Sort an array s based on the index values. The resulting array
contains the index values as the data element values, with
sequential number indexes indicating the sort order.
Alternatively, the new sorted array is stored in array d if
specified.

gensub(r, s, h [, t]) Search either the variable $0, or the target string t if supplied,
for matches of the regular expression r. If h is a string beginning with either g or G, replaces the matching text with s.
If h is a number, it represents which occurrence of r to replace.

gsub(r, s [,t]) Search either the variable $0, or the target string t if supplied, for matches of the regular expression r. 
If found, substitute the string s globally.

index(s, t) Returns the index of the string t in string s, or 0 if not found.

length([s]) Returns the length of string s, or if not specified, the length of $0.

match(s, r [,a]) Returns the index of the string s where the regular expression r occurs. If array a is specified, it contains the portion of s that matches the regular expression.
        
split(s, a [,r]) Splits s into array a using either the FS character, or the regular expression r if supplied. Returns the number of fields.

sprintf(format,variables) Returns a string similar to the output of printf using the format and variables supplied.

sub(r, s [,t]) Search either the variable $0, or the target string t, for matches of the regular expression r. If found, substitutes the string s for the first occurrence.

substr(s, i [,n]) Returns the nth character substring of s, starting at index i. If n is not supplied, the rest of s is used.

tolower(s) Converts all characters in s to lower case.

toupper(s) Converts all characters in s to upper case.
'

# time function

:'
mktime(datespec) Converts a date specified in the format YYYY MM DD HH MM SS
[DST] into a timestamp value.

strftime(format[, timestamp]) Formats either the current time of day timestamp, or timestamp if
provided, into a formatted day and date, using the date() shell function format.

systime() Returns the timestamp for the current time of day.
'

gawk 'BEGIN{
date = systime()
day=strftime("%A, %B %D, %Y", date)
print day
}'


