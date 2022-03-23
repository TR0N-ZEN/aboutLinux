#!/bin/bash

X = 5
Y = 22
Z=(9 8 7 6 5 4 3 2 1) # works in bash this way; this is a declaration of a list in a varaible list and its initilisation


readonly X
readonly Z

Y = 35
Z[1] = 100
#echo "${array_name[index]}"
#echo "${NAME[*]}" # accesing all elements of an array at once
#echo "${NAME[@]}" # accesing all elements of an array at once

unset X
unset Y
unset Z