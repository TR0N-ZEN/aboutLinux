
Running programs are called processes.  
Processes can create child processes.
Processes can communicate other processes.  
Each process (next to other things) has a:

+ pid (process id)
+ ppid (parent process id; except for the _init process_)
+ list of things each pointing to child processes, each thing also contains a jobid,
  numbering the child processes starting from 1
  The first process and so the parent process of
  all other processes is called the _init process_.
+ an associated user under whose identity it was started
+ streams for
  + input
  + output
  + error

A process gets its id from its parent process.  

Processes can be considered as a

+ deamon (background processes, meaning a user would not directly interact with
  it instead programs do; on request with
  `ps -f` in column with heading _TTY_ a question mark should be present)
+ interactively used programs

well other processes, I know no further classification but there are some terms I still wonder about:

+ service
+ microservice
+ app
+ applet
+ job


When interacting with a computer as a human so called *shells* also known
as *command line interfaces* are used.  
The streams of a process can be attached to a shell,
to make the output of a process visible and to enter input for the process.  

When using a shell (in my case `bash`) programs in execution mostly put their output into
the shell from which the process was started from.  

`echo $$` will print the pid of the shell process.
