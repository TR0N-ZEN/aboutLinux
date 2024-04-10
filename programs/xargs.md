# xargs

Is used  if programs only work on arguments and not with standard input.  
`rm` is such a program, so `ls -N . | rm` or even `ls -N . | rm -` won't work,  
but `ls -N . | xargs rm` would.  
The option of `xarg` to ask for permission is `-p`.  
Another example from the first link below is `find . -name 'log*' -print0|xargs -0 -p rm`,  
the option `-print0` of `find` formats the outputted result as a null seperated list  
and `-0` of `xargs` makes it read its input as a null seperated list.  

---

+ https://medium.com/techtofreedom/5-handy-uses-of-xargs-commands-in-bash-e1574ae06a11

---

examples:  

+ `sudo docker container ls --all --format '{{ json . }}' | jq '.ID' | xargs sudo docker container rm`
+ `sudo docker image ls --all --format '{{json . }}' | jq '.ID' | xargs sudo docker image rm`
