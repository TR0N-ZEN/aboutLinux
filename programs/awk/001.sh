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

