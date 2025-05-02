#!/bin/bash

function is_in
{
  local arr=("$@") # $@ is the array of parameters
  echo ${arr[@]}
  local i=1 # 1 instead of 0 is the staring index for ${arr[$i]}, because the zeroth element is the element that we search for 
  local v=0
  while [ $i -ne $# ]; do # $# is the number of arguments supplied to the enclosing function
    v=`echo ${arr[$i]} | sed -n '/^'"$1"'$/p' | wc -l`
    if [ $v -gt 0 ]; then echo "$i"; return 0; fi
    let "i=i+1"
  done
  return 1;
}

echo `is_in "ad" "b" "ad" "k"`
