#!/bin/bash

if [ -z "$1" ]
then
	echo 'CAUGHT with -z'
fi
if [ "$1" ]
then
  echo 'CAUGHT with str'
fi


if [ $1!='a' ] && [ $1!='b' ]
then
  echo 'LOL &&';
fi
if [ $1!='a' -a  $1!='b' ]
then
  echo 'LOL -a';
fi


if [ $1='a' ] || [ $1='b' ]
then
  echo 'LOL ||';
fi
if [ $1='a' -o  $1='b' ]
then
  echo 'LOL -o';
fi
