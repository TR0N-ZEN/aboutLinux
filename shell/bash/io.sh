#!/bin/bash

echo 'What is your Name?' # with echo you write to the output attached to the executing script
read PERSON # with read you read from the input attached to the executing script
echo "Hello $PERSON." 

echo 'Hello' > a.txt # write data streaming from standard output to file named a.txt
echo 'Hello' 1> a.txt # write data streaming from standard output to file named a.txt
echo 'Hello' 2> a.txt # write data streaming from standard error to file named a.txt
echo 'Hello' 1> a.txt 2> b.txt # write data streaming from standard output to file named a.txt and data streaming from standard error to file named b.txt
echo 'Hello' 1> a.txt 2> a.txt # write data streaming from standard output and error to file named a.txt
echo 'Hello' 1> a.txt 2>&1 # write data streaming from standard output and error to file named a.txt
echo 'Hello' >> a.txt # append data streaming from standard output to file named a.txt
echo < a.txt # y
cat a.txt | echo

# my source was https://dev.to/iggredible/what-does-2-1-mean-290

