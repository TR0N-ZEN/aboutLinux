In unix like operating systems it is common that many things 
are organised in/as files and directories (e.g. storage devices, input devices, regular files).

If queried with `ls` the first symbol in each row represents a file property, which can be:  

| Symbol | meaning                                                                            |
| ------ | ---------------------------------------------------------------------------------- |
| \-     |                                                                                    |
| b      | block device                                                                       |
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
