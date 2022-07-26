
Processes exchange data through _sockets_.  
Terms:
+ _IPC_ (inter process communication)

Since processes can start other processes,  
the child processes can block the execution of the parent process or not.  
This is amatter if a process is started in foreground or in background.  

To start a process detached from the bash shell, appending a space and `&` to the command one enters will do:  
```bash
/usr/bin/xeyes &
```
Shall the process be detached from the user session  
in order to keep the program running even when the user logs out
`disown` (is it considered a program or a parameter or an option) can be used:
```bash
/usr/bin/xeyes & disown
```

Processes attached to a shell can be detached from it by  
first suspending them via pressing <kbd>Strg</kbd> <kbd>Z</kbd>, making the shell more accessible for interaction with the user  
and then sending it to the background with the command  
```bash
bg [<pid>|%<jobid>]
```
To bring at attach it to the shell again (also to reffered as brining it into the foreground)
```bash
fg [<pid>|%<jobid>]
```

The comman `jobs` shows the child processes of the present shell session.  

If one wants to send a stream into nothingness send it to `/dev/null`.  

To stop processes use `kill [<pid>|%<jobid>]`.  
`killall` kills by name.  
