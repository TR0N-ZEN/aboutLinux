#!/bin/bash

# break
#   breaks out of the loop

# continue
#   skips the rest of the current iteration of the enclosing loop

# continue n
#   continues with the n-th oteration of the enclosing loop

# break
#   breaks out of the enclosing loop
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

LIST=(9 8 7 6 5 4 3 2 1) # this is a declaration of a list in a varaible list and its initilisation

for TOKEN in $LIST
do
  if [ $TOKEN -eq 6 ]
  do
    continue 8
  fi
done