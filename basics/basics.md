In Unix-like operating systems it is common that everything  
is organised in files and directories (e.g. storage devices, input devices).

If queried with `ls` the first symbol in each row represents a fileproperty, which can be:  
| Symbol | meaning                                                                            |
| ------ | ---------------------------------------------------------------------------------- |
| \-     |                                                                                    |
| b      |                                                                                    |
| c      | character special file. Raw input/output device file such as a physical hard drive |
| d      | directory                                                                          |
| l      | symbolic link file                                                                 |
| p      | named pipe                                                                         |
| s      | socket                                                                             |

## folder structure
/ (the base folder also known as _root_)  
├── bin -> usr/bin  
├── boot  
├── desktopfs-pkgs.txt  
├── dev (folder for device files - devices)  
├── etc  
├── home (contains user directories)  
├── lib -> usr/lib  
├── lib64 -> usr/lib  
├── mnt (commonly used point for attaching storage devices)  
├── opt   
├── proc  
├── root (user folder of the super user)  
├── rootfs-pkgs.txt  
├── run  
├── sbin -> usr/bin  
├── srv  
├── sys  
├── tmp  
├── usr  
└── var  

18 directories, 2 files

---

# processes
Running programs are called processes.  
Processes can create child processes and communicate with them.  
Each process next to other things, has a:
+ pid (process id)
+ ppid (parent process id; except for the _init process_)
The first process and so the parent process of all other processes is called the _init process_.  

A process gets its id from its parent process.  

Processes can be:
+ deamons (are background processes, meaning a user would not directly interact with it instead programs do; on request with `ps -f` in column with heading _TTY_ a question mark should be)
+ well other processes, I know no further classification.  

Processes exchange data through _sockets_.  
Terms:
+ _IPC_ (inter process communication)

...

Pocesses have an input, output and error stream called standard-in, standard-out and standard-error.  
Those are facillitated in a pseude filesystem at */etc/proc/*.
The processes streams take the appearance of files:  
+ `/proc/<processID>/fd/0` for standard-in
+ `/proc/<processID>/fd/1` for standard-out
+ `/proc/<processID>/fd/2` for standard-error

Are these streams for inter process communication?  
...



When interacting with a computer as a human so called *shells* also known as *command line interfaces* are used.  
The streams of a process can be attached to a shell, to make the output of a process visible and to enter input for the process.  

When using a shell (here `bash` is used) programs in execution mostly put their output into the shell from which the process was started from.  
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
To redirect the streams into files which can be read at any point in time.  
<!-- Dazu verwendet man bspw. `nohup` (*no-hangup* wird wie `sudo` VOR dem eigentlichen Befehl notiert): -->
```bash
/usr/bin/xeyes > xeyes.log 2>&1 &
# or equivalent in newer versions of bash
/usr/bin/xeyes &> xeyes.log &
# nohup /usr/bin/xeyes > xeyes.log 2>&1 & # dunno what nohup is for
``` 
https://dev.to/iggredible/what-does-2-1-mean-290

Processes attached to a shell can be detached from it by  
first suspending them via pressing <kbd>Strg</kbd> <kbd>Z</kbd>, making the shell more accessible for interaction with the user  
and then seding it to the background with the command  
```bash
bg [<pid>|<jobid>]
```
To bring at attach it to the shell again (also to reffered as brining it into the foreground)
```bash
fg [<pid>|<jobid>]
```
