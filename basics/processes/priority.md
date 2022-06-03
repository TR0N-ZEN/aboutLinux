`nice` is a command used when starting processes.  
`nice -n x` where $x \in \N : -21 < x < 20$,  
while $-20$ is the highest priority a process can get,  
which prefixes the command starting the process.  


To manage already running processes use `renice -p <pid>`.  
