#!/bin/bash
# breaking otu of an outer loop
# with "break n" you can break "n" 
# layer


for ((a = 1; a < 4; a++))
do
  echo "outer loop: $a"
  for ((b = 1; b < 100; b++))
  do
    if [ $b -gt 4 ]
    then 
      break 2  #notice here, you can even break outter for loop with this
    fi
    echo "  Inner loop: $b"
  done
done
