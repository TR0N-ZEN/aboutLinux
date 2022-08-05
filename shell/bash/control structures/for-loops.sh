#!/bin/bash

LIST=(9 8 7 6 5 4 3 2 1) # this is a declaration of a list in a varaible list and its initilisation

for TOKEN in $LIST
do
  echo $TOKEN
done

echo "${LIST[8]}" # selecting elements by index
echo "${LIST[0]}"

echo `expr 3 + 5` # evaluating mathematical expressions