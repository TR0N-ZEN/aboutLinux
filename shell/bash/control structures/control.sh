#!/bin/bash

# break
#   breaks out of the loop

# continue
#   skips the rest of the current iteration of the enclosing loop

# continue n
#   continues with the n-th oteration of the enclosing loop
a=0

while [ $a -lt 10 ]
do
  echo $a
  if [ $a -eq 5 ]
  then
    break
  fi
  a=`expr $a + 1`
done