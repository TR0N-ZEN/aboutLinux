In linux running programs are called processes.  
The first process is the _init process_.  
Each process has a/an:
+ pid (process id)
+ ppid (parent process id; except for the _init process_)

Processes can be:
+ deamons (background processes; on request with `ps -f` in column with heading _TTY_ a question mark should be)

Processes exchange data through _sockets_.  
Terms:
+ _IPC_ (inter process communication)