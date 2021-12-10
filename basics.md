In Unix-like operating systems it is common that everything  
is organised in files and dircetories (e.g. storage devices, input devices).

If queried with `ls` the first symbol in each row represents a fileproperty, which can be:  
|Symbol|meaning|
|-|-|
|\-	||
|b 	||
|c 	|character special file. Raw input/output device file such as a physical hard drive|
|d 	|directory|
|l 	|symbolic link file|
|p 	|named pipe|
|s	|socket|

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