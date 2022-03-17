#!/bin/bash

echo "What is your Name?"
read PERSON
echo "Hello $PERSON."

echo "running file: $0" # special variable $0 hold name of the executing script
echo "first argument:$1" # special varaible $n holds the values of the n-th argument passed to the executing script

for TOKEN in $* # $* holds all arguments in a list, this loop iterates for each element in $* bound to the varible TOKEN once
do
  echo $TOKEN
done