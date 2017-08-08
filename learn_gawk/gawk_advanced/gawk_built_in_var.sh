#!/bin/bash

: '
  ARGC The number of command line parameters present. Notice the gawk script is not counted in.
  ARGIND The index in ARGV of the current file being processed.
  ARGV An array of command line parameters. gawk Script itself is not counted, so ARGV[0] is gawk. 
  CONVFMT The conversion format for numbers (see the printf statement). The default
  value is %.6 g.
  ENVIRON An associative array of the current shell environment variables and their
  values. Associative array is like string hashmap, ENVIRON['HOME'] is the home dir.
  ERRNO The system error if an error occurs when reading or closing input files.
  FILENAME The file name of the data file used for input to the gawk program.
  FNR The current record number in the data file. If process multiple file, it only count the records processed in current one.
  IGNORECASE If set to a non-zero value, ignore the case of characters in strings used in the
  gawk command.
  NF The total number of data fields in the data file.
  NR The number of input records processed. If processed multiple file, it counts all records have been processed.
  OFMT The output format for displaying numbers. The default is %.6 g.
  RLENGTH The length of the substring matched in the match function.
  RSTART The start index of the substring matched in the match function.
'



