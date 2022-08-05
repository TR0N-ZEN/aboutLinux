#!/bin/bash

function is_in
{
  local arr=("$@")
  local i=1
  local v=0
  while [ $i -lt $# ]; do
    let "++i"
    v=`echo ${arr[$i]} | sed -n '/'"$1"'/' | wc -l`
    if [ $v -gt 0 ]; then return 1; fi
  done
  return 0
}

echo `is_in "a" "b" "c" "a"`
