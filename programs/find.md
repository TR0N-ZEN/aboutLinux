the output of `tldr find`

```
find

  Find a specified string in one or more files.
  More information: https://learn.microsoft.com/windows-server/administration/windows-commands/find.

  - Find lines that contain a specified string:
    find "string" path/to/file_or_directory

  - Display lines that do not contain the specified string:
    find "string" path/to/file_or_directory /v

  - Display the count of lines that contain the specified string:
    find "string" path/to/file_or_directory /c

  - Display line numbers with the list of lines:
    find "string" path/to/file_or_directory /n

```
<br>

Find a file with a name matching the regex and execute a command providing the path to the found file(s)  
where `{}` is the path to the found file(s):  

`find {{regex.to.find.in.file}} {{search.root}} -name {{regex.to.match.filename}} -exec {{command}} {} \;`  
<br>

Execute `sed -ne '/CMD/p'` on files inside the folder or any subfolder of '/tmp/' matching the regex '*.dockerfile':  

`find /tmp/ -name '*\.dockerfile' -exec sed -ne '/CMD/p' {} \; ` (The space before `\;` is necessary!).

which is equivalent to: `find "CMD" /tmp/ -name '*\.dockerfile'`.  
<br>

Find files containing the text 'docker-compose.',  
segment the name on each dot and  
print the fourth and fifth segement separatated by a dot.  
`find . -name '*docker-compose.*' | awk 'BEGIN {FS="."} {system("mkdir "$4"."$5)}'`

