#cat data.txt | sed -n '/\[0-9\]\{8\}-\[0-9\]\{6\}/p' # prints because of /p at the end and supresses output the <something>-buffer because of -n
#cat data.txt | sed 's/\([0-9]\{8\}\)-\([0-9]\{6\}\)/\2/' # print everything in the <something>-buffer -> prints everthing in the stream with the substitution applied
cat data.txt | sed -n 's/\([0-9]\{8\}\)-\([0-9]\{6\}\)/\2/p' # supresses print of everything in the <something>-buffer and prints the matched and substituted parts
sed -n 's/\([0-9]\{8\}\)-\([0-9]\{6\}\)/\2/p' data.txt # as in the line before just that the input isnt retrieved from cat via a pipe

cat data.txt | sed -n 's/\([0-9]\{4\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)-\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)/Year:\1  Month:\2  Day:\3 Hour:\4  Minute:\5 Second:\6/p' # supresses print of everything in the <something>-buffer and prints the matched and substituted parts

cat data.txt | sed -n 's/\([0-9]\{4\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)-\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)/{ "Year":"\1", "Month":"\2", "Day":"\3", "Hour":"\4", "Minute":"\5", "Second":"\6" }/p' | jq .

ls -m1 | sed -n 's/\(.*\)\.md/\1/p' # prints all names of files ending on .md without .md


