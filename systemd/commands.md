sources:
* https://www.freedesktop.org/software/systemd/man/systemctl.html

---

## units
$<unitType> \quad := \quad service|socket|device|mount|automount|path|scope|slice|swap|target|timer$  
$<unit> \quad := \quad <name>.<unitType>$


### commands
|command|effect|
|-|-|
|`systemctl {start,stop,restart,reload} <unit> ... <unit>`	|starts,stops,restarts,reloads unit(s) `<unit> ... <unit>`|
|`systemctl status <unit>`									|shows info about status of unit|
|`systemctl list-unit --state=<state>`						|list loaded units which are in `<state>`|
|`systemctl -t <unitType>`<br>`systemctl --type=<unitType>`	|list loaded units of `<unitType>` service|
|`systemctl {enable,disable} <unit> ... <unit>` 			|enable or disable autostart|

### targets 
those groups can be ompared to "Runlevels" (what are Runlevels?)  
Runlevels are states of the system running on the pc.  
The higher the runlevel the greater the complexity of the system, meaning more programs are running.  
Targets are custom runlevels. They are called targets because the system reaches stages/targets while loading.  
