sources:

+ <https://www.tutorialspoint.com/unix/unix-regular-expressions.htm>
+ <https://www.tutorialspoint.com/sed/sed_basic_syntax.htm>
+

---

```bash
sed [Optionen] [[-e] Sedcommand | -f Sedcommandfile] [File...]
```

*Sedcommands* can either be executed on each line or on the entire input.  
*Sed* operates on a *patter-buffer* and a *hold-buffer*.  
Commands operating on each line operate on the *patter-buffer*,  
when the operation on line $n$ is done the result us saved in the *hold-buffer*.  

I think all given *Sedcommands* are executed on each line of the input,  
so changes  

A few warming up examples which  result in the same final output.  

```bash
echo -e "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n" | sed -e '1d;2d;5d' #deletes lines 1,2 and 5
echo -e "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n" | sed -e '1d' -e '2d' -e '5d' #deletes lines 1,2 and 5
cat linenumbers.txt | sed -e '1d' -e '2d' -e '5d' # same as line above
sed -e '1d' -e '2d' -e '5d' linenumbers.txt # same as line above
sed -e '
1d
2d
5d
' linenumbers.txt # same command before
sed -f commands.txt linenumbers.txt # same command before
```

Now about pattern matching.  

```bash
echo "Anton Knecht" | sed -n '/Anton/p' #print each line containing Anton
echo "Anton Knecht" | sed 's/Anton/Berta/g' #replace Anton with Berta most the patterne buffer
cat textfile.txt | sed -n '1,5p' # print lines 1 to 5
```

If one tries to match a string via a pattern
then certain characters need to be escaped to get their literal meaning.  
Those characters are called special characters  
and these are

+ .
+ \*
+ [
+ ]
and possibly more.  

Now about conditions and loops  

```bash
sed -n '
/Paulo/!b point1
s/^/- / 
:point1
p
' books.txt
```

The line `/Paulo/!b point1` is to be understood as  
if you do not ('not', because of the exclamation mark) match the string `Paulo` jump to the label `point1`  
in the program code and succeed from there.  

```bash
sed -n '
/Paulo/b point1
s/^/- / 
:point1
p
' books.txt
```

The line `/Paulo/b point1` is to be understood as  
if you do match the string `Paulo` jump to the label `point1`  
in the program code and succeed from there.  

```bash
sed -n ' 
s/\n/, / 
:p1 
/Paulo/s/^/-/ 
/----/!t p1 
p' books.txt 
```

The line `/----/!t p1` is to be understood as
if you do no match the string `----`  
jump to the label `p1` in the program code and continue from there.

Operations can be done on a given range of the input

```bash
sed -n '1,5 p' -f linenumbers.txt
sed -n '3,$ p' -f linenumbers.txt
sed -n '1,+5 p' -f linenumbers.txt
sed -n '1~3 p' -f linenumbers.txt
sed -n '/Paulo/ p' -f books.txt
sed -n '/Paulo/,+1 p' -f books.txt
```
