#!/bin/bash


count ()
{
  return $#
}


# how to supply two arrays to a functions
# idea array is prefaced by an integer which indicates it's size
# f 3 a b c 3 x y z

seperate_two_arrays () #
{
  inp=("$@")
  terminator=$1 # indicates the index inside $inp of the last element of the first array
  i=0
  first_array=()
  second_array=()
  while [ $i -lt $terminator ]
  do
    i=`expr $i + 1`
    first_array=(${first_array[@]} ${inp[$i]})
  done
  `count ${inp[@]}`
  size=$?
  while [ $i -lt $size ]
  do
    echo "${inp[$i]}"
    i=`expr $i + 1`
    second_array=(${second_array[@]} ${inp[$i]})
  done
  echo "first array: ${first_array[@]}"
  echo "second array: ${second_array[@]}"
}


A=(4 a b c d u u u u u)
seperate_two_arrays ${A[@]}

#echo "A has $? elements."
