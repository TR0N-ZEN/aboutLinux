# bash

sources:

+ <https://dev.to/iggredible/what-does-2-1-mean-290>
+ <https://www.howtogeek.com/439199/15-special-characters-you-need-to-know-for-bash/>

| operator      | meaning                                                                                                                                                                         | example                                        |
|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------|
| `x > y`       | for the time executing program write data streaming from standard output to file y                                                                                              | `cat file1.txt > file2.txt`                    |
| `x 1> y`      | for the time executing program write data streaming from standard output to file y                                                                                              | `cat file1.txt 1> file2.txt`                   |
| `x 2> y`      | for the time executing program write data streaming from standard error to file y                                                                                               | `cat file1.txt 2> file2.txt`                   |
| `x 1> y 2> z` | for the time executing program write data streaming from standard output to file y and data streaming from stdandard error to file z                                            | `cat file1.txt 1> file2.txt 2> file3.txt`      |
| `x 1> y 2>&1` | for the time executing program write data streaming from standard error to file y and data streaming from stdandard error to the same location where standard out is written to | `cat file1.txt > file2.txt 2>&1`               |
| `x >> y`      | for the time executing program append data streaming from standard output to file y                                                                                             | `cat file1.txt >> file2.txt`                   |
| `x < y`       | pass content of file y as arguments to program x (i suppose)                                                                                                                    | `more < file1.txt`                             |
| `x \| y`      | pass output of program x to input of program y                                                                                                                                  | `cat fil1.txt \| more`                         |
|               |                                                                                                                                                                                 |                                                |
|               |                                                                                                                                                                                 |                                                |
|               |                                                                                                                                                                                 |                                                |
|               |                                                                                                                                                                                 |                                                |
|               |                                                                                                                                                                                 |                                                |
