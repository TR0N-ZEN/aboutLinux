|operator|meaning|example|
|-|-|-|
|x > y|pass output from program x into file y |cat file1.txt > file2.txt|
|x \| y|pass output of rpgram x to input of program y||
|x < y|pass content of file y as arguments to program x (i suppose)||
||||
||||

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
