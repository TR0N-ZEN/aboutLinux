

sudo docker container ls -a --filter before=peaceful_tharp | awk '{ if (length($1)>10) { print $1 } }' | sudo docker container rm

# https://www.grymoire.com/Unix/Awk.html#uh-41