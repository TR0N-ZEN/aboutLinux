
awk '{print $1}' /etc/passwd
awk -F ":" '{print $1}' /etc/passwd
df -h | awk '{ $2 - $3}'
df -h | awk '{ $2  $3}'
df -h | awk '{ $2,$3}'
df -h | awk '{print $2,$3}'
df -h | awk '{print $2 - $3}'
df | awk '{print $2 - $3}'
df -h | awk '{print $2 - $3} END {print lol}' 
df -h | awk '{print $2 - $3} END {print "lol"}' 
df | awk '{print $2 - $3} END {print "lol"}' 
df | awk 'BEGIN {print "lal"} {print $5} END {print "lel"}' 
df | awk 'BEGIN {print "lal"} /dev/ {print $5} END {print "lel"}' 
df | awk 'BEGIN {print "lal"} /dev/ {print $NF} END {print "lel"}' 
df | awk 'BEGIN {print "lal"} /dev/ {print $1 $NF} END {print "lel"}' 
df | awk 'BEGIN {print "lal"} /dev/ {print $1"\t"$NF} END {print "lel"}' 
df | awk 'BEGIN {print "lal"} /dev/ {print $1"\t"$5"\t"$NF} END {print "lel"}' 


docker image ls --filter=reference=*:latest --format '{{.Size}}' | sed -ne 's/GB//p' | awk '{ SUM += $1; } END {print SUM }'

# can be expressed without sed

docker image ls --filter=reference=*:latest --format '{{.Size}}' | awk '/GB/ { SUM += $1; } END {print SUM }'