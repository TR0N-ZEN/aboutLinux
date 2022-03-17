| operator | meaning                                                      | example                      |
| -------- | ------------------------------------------------------------ | ---------------------------- |
| x > y    | write output from program x into file y                      | `cat file1.txt > file2.txt`  |
| x >> y   | append output from program x to file y                       | `cat file1.txt >> file2.txt` |
| x < y    | pass content of file y as arguments to program x (i suppose) | `more < file1.txt`           |
| x \| y   | pass output of prgram x to input of program y                | `cat fil1.txt | more`        |
|          |                                                              |                              |
|          |                                                              |                              |

+ https://dev.to/iggredible/what-does-2-1-mean-290

Consider the code written in _./hello.sh_:

```bash
#!/bin/bash
echo "What is your Name?"
read PERSON
echo "Hello $PERSON."
```

```bash
#!/bin/bash
echo "What is your Name?"
read PERSON
readonly PERSON
echo "Hello $PERSON."
```

```bash
echo "What is your Name?"
read PERSON
echo "Hello $PERSON."
unset PERSON
```

```bash
echo "running file: $0"
echo "first argument:$1"
```

```bash
echo $*
echo $@
```

```bash
for TOKEN in $*
do
  echo $TOKEN
done
```

```bash

```

```bash

```
