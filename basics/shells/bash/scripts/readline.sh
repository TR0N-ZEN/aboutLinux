#!/usr/bin/env bash

# Read `man read` if you are lost.

IFS=',' read -a XS -p ">"

for X in ${XS[@]}; do
  printf "$X\n"
done
