#!/bin/bash


function up {
  count=0
  while [ `expr $1 - $count` -gt 0 ]
  do
    count=`expr $count + 1` && \
    cd .. && \
    pwd
  done
}


