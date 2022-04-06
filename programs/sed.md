sources:
+ https://www.tutorialspoint.com/unix/unix-regular-expressions.htm
+ https://www.tutorialspoint.com/sed/sed_basic_syntax.htm
+ 

---


```bash
sed [Optionen] [[-e] sed-Skript | -f Skriptdatei] [Textdatei...]
```

```bash
echo -e "1\n2\n3\n4\n5\n" | sed -e '1d' -e '2d' -e '5d' #deletes lines 1,2 and 5
echo "Anton Knecht" | sed -n /Anton/p #print each line containing Anton
echo "Anton Knecht" | sed s/Anton/Berta/g #replace Anton with Berta
cat textfile.txt | sed -n 1,5p # print lines 1 to 5
```

```bash

```

```bash

```

```bash

```