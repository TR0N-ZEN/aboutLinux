#!/bin/bash

function is_in
{
  echo $1
  local arr=("$@")
  local i=1
  local v=0
  while [ $i -ne $# ]; do
    let "i++"
    echo "$i  ${arr[$i]}"
    v=`echo ${arr[$i]} | sed -n '/'"$1"'/p' | wc -l`
    if [ $v -gt 0 ]; then echo "LOL"; return 1; fi
  done
  return 0;
}

echo `is_in "a" "b" "c" "a"`
