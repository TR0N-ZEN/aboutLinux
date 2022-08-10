#!/bin/bash
function count {
  arr=("$@")
  i=0
  for e in "${arr[@]}"
  do
    #echo $e
    i=`expr $i + 1`
  done
  return $i;
}
function count_2 {
  return $#;
}
A=(1 2 3 4 5 6 8)
count_2 "${A[@]}" && echo "A has $? elements."
count "${A[@]}"   && echo "A has $? elements."