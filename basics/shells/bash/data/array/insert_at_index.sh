#!/bin/bash

ELEMENT=$1
INDEX=$2

arr=(a b c d e f g h)

arr=( "${arr[@]:0:$INDEX}" $ELEMENT "${arr[@]:INDEX}" )

echo "${arr[@]}"

