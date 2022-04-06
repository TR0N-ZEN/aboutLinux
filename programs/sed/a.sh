#cat data.txt | sed -n '/\[0-9\]\{8\}-\[0-9\]\{6\}/p' # prints because of /p at the end and supresses output the <something>-buffer because of -n
#cat data.txt | sed 's/\([0-9]\{8\}\)-\([0-9]\{6\}\)/\2/' # print everything in the <something>-buffer -> prints everthing in the stream with the substitution applied
cat data.txt | sed -n 's/\([0-9]\{8\}\)-\([0-9]\{6\}\)/\2/p' # supresses print of everything in the <something>-buffer and prints the matched and substituted parts

ls | sed -n 's/\(.*\)\.md/\1/p' # prints all names of files ending on .md without .md