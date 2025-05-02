#!/bin/bash
#   Print grade based on the mark
name=$1
mark=$2
case $mark in
    9[0-9]|100)
        grade="A+" ;;
    8[0-9])
        grade="A" ;;
    7[0-9])
        grade="B+" ;;
    6[0-9])
        grade="C+" ;;
    0|[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])
        grade="F" ;;
    *)
        echo "Invalid mark"
        exit 0 ;;
esac

echo "$name obtained $grade"

