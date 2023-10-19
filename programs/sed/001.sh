
# prints because of /p at the end and supresses output of the <something>-buffer because of the option -n
cat data.txt | 
sed -n '/\[0-9\]\{8\}-\[0-9\]\{6\}/p'

# print everything in the <something>-buffer -> prints everthing in the stream with the substitution applied?
cat data.txt |
sed 's/\([0-9]\{8\}\)-\([0-9]\{6\}\)/\2/'


# supresses print of everything in the <something>-buffer and prints the matched and substituted parts
cat data.txt |
sed -n 's/\([0-9]\{8\}\)-\([0-9]\{6\}\)/\2/p'


# as in command before just that the input isn't retrieved from cat via a pipe
sed -n 's/\([0-9]\{8\}\)-\([0-9]\{6\}\)/\2/p' data.txt 


# supresses print of everything in the <something>-buffer and prints the matched parts after the substituion
sed \
  -n \
  's/\([0-9]\{4\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)-\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)/Year:\1  Month:\2  Day:\3 Hour:\4  Minute:\5 Second:\6/p' \
  data.txt

# as previous example but with different substitution and piped to jq (a JSON parser)
sed -n \
    's/\([0-9]\{4\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)-\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)/{ "Year":"\1", "Month":"\2", "Day":"\3", "Hour":"\4", "Minute":"\5", "Second":"\6" }/p' \
    data.txt | 
jq .

# as previous example but with extended regular expressions
sed -nE \
    's/([0-9]{4})([0-9]{2})([0-9]{2})-([0-9]{2})([0-9]{2})([0-9]{2})/{ "Year":"\1", "Month":"\2", "Day":"\3", "Hour":"\4", "Minute":"\5", "Second":"\6" }/p' \
    data.txt | 
jq .


# prints all names of files ending on .md without printing .md
ls -m1 | \
sed -n 's/\(.*\)\.md/\1/p'

