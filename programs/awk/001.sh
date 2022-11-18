#!/bin/bash

# print the first field of the output of ps
ps | awk '{print $1}'


# treat colon as the field separator
# set the field separator on the output of awk to be a dash
awk 'BEGIN{FS=":"; OFS="-"} {print $1,$2,$6}' /etc/password


# treat the forward shlash as the field separator
# searching per line for a pattern abc
awk -F "/" '/abc/'


# treat the forward slash as the field separator
# a line matches if it starts with a forward slash
# if a line matches print the last field of it
# perform these aforementioned actions in the file /etc/shells
awk -F "/" '/^\// {print $NF}' /etc/shells


# print two empty line with echo
# print LOL and enter into a new line with awk
# awk matches empty lines
# for matched line print HAH and enter into a new line
# after processing all lines awk enters into a new line and prints ending now
echo '\n\n' | awk 'BEGIN{printf "LOL\n"} // {printf "HAH\n"} END {print "\nending now"}'

# print lines from /etc/shells that are longer than 7 signs
awk 'length($0) > 7' /etc/shells


# print lines of output of ps -ef where the last field is equal to "/bin/bash"
ps -ef | awk '{ if($NF == "/bin/bash") print $0 }'

# prints the text with the values 1, 4, 9, ..., 100
awk 'BEGIN { for(i=1; i<=10; i++) print "LOL i squared is ", i*i; }'

# print lines inside the file .bashrc
# where the first field matches the regex /^[b,c]/
# meaning the first character of the line is either b or c
awk '$1 ~ /^[b,c]/ {print $0}' .bashrc

