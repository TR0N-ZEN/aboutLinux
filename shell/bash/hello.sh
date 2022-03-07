#!/bin/bash

echo "What is your Name?"
read PERSON
readonly PERSON
echo "Hello $PERSON."
# unset PERSON
echo "running file: $0"
echo "first argument:$1"

for TOKEN in $*
do
  echo $TOKEN
done

LIST=(9 8 7 6 5 4 3 2 1)

for TOKEN in $LIST
do
  echo $TOKEN
done

echo "${LIST[8]}"
echo "${LIST[0]}"

echo `expr 3 + 5`