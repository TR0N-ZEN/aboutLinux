In Unix-like operating systems it is common that everything  
is organised in files and dircetories (e.g. storage devices, input devices).

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

(In linux) running programs are called processes.  
The first process is the _init process_.  
Each process has a/an:
+ pid (process id)
+ ppid (parent process id; except for the _init process_)

A process gets its id from its parent process.

Processes can be:
+ deamons (background processes; on request with `ps -f` in column with heading _TTY_ a question mark should be)
+ 

Processes exchange data through _sockets_.  
Terms:
+ _IPC_ (inter process communication)


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
Prozess direkt im Hintergrund starten
Um einen Prozess im Hintergrund zu starten, hängt man einfach ein `&` an den Befehl an:

```bash
/usr/bin/xeyes &
```
Möchte man den Prozess jedoch zusätzlich von der Benutzer-Sitzung lösen 
, damit diese geschlossen werden kann, während der Prozess weiterläuft, 
ist die Verwendung von `disown` notwendig:
```bash
/usr/bin/xeyes & disown
``` 
Es empfiehlt sich aber, die vom Prozess erzeugte Ausgabe 
auf stdout bzw. stderr entweder in eine Logdatei umzuleiten.  
Dazu verwendet man bspw. `nohup` (wird wie sudo VOR dem eigentlichen Befehl notiert):
```bash
nohup /usr/bin/xeyes > xeyes.log 2>&1 &
``` 

## Prozess unterbrechen und/oder in den Hintergrund schicken
Wenn man ein Programm oder einen Prozess in der Shell gestartet hat, 
kann man ihn mit der Tastenkombination <kbd>Strg</kbd> <kbd>Z</kbd> einfrieren. 
Nun ist die Shell wieder freigegeben und man kann zum Beispiel Daten, 
die vom Prozess verwendet werden, zu bearbeiten oder sichern.  
Mit dem Befehl
```bash
fg
``` 
läuft der Prozess anschließend wieder (auf der Shell) weiter. 
Möchte man die Shell dauerhaft freigeben (also während der Prozess weiterläuft), 
gibt man statt `fg`
```bash
bg
``` 
ein, um den Prozess in den Hintergrund zu schicken. Nun kann man die Shell weiter benutzen oder auch schließen, während der Prozess im Hintergrund läuft.
