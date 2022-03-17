#!/bin/bash

X = 5
Y = 22
Z=(9 8 7 6 5 4 3 2 1) # this is a declaration of a list in a varaible list and its initilisation


readonly X
readonly Z

Y = 35
Z[1] = 100

unset X
unset Y
unset Z