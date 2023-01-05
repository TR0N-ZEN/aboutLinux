Processes have an input, output and error stream called standard-in, standard-out and standard-error.  
Those are facillitated in a pseudo filesystem (whatever that means) at */etc/proc/*.
The processes streams take the appearance of files:  
+ `/proc/<processID>/fd/0` for standard-in
+ `/proc/<processID>/fd/1` for standard-out
+ `/proc/<processID>/fd/2` for standard-error

Are these streams for inter process communication?  

...

The streams of a process can be attached to a shell, to make the output of a process visible and to enter input for the process.  

To redirect the streams into files which can be read at any point in time.  
```bash
# https://dev.to/iggredible/what-does-2-1-mean-290
/usr/bin/xeyes > xeyes.log 2>&1 &

# or equivalent in newer versions of bash
/usr/bin/xeyes &> xeyes.log &

# dunno what nohup is for
# nohup /usr/bin/xeyes > xeyes.log 2>&1 &
``` 