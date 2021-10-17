<<<<<<< HEAD
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
=======
sources:
* https://www.freedesktop.org/software/systemd/man/systemctl.html
---

## reminder
## units
\<unit\> := {  
	\<name\>.service |  
	\<name\>.socket |  
	\<name\>.device |  
	\<name\>.mount |  
	\<name\>.automount |  
	\<name\>.path |  
	\<name\>.scope |  
	\<name\>.slice |  
	\<name\>.swap |  
	\<name\>.target |  
	\<name\>.timer  
}
## targets
are stages of the system  
and each stage has programs which are added to the pool of running programs  
making the system more complex  
this concept can be compared to runlevels


`systemctl -t target` will maybe list all targets running
`systemctl list-unit-files -t targets` lists all installed targets


---


## commands
|effect|command|
|-|-|
|start or stop *units*|`systemctl {start,stop,restart,reload} <unit>`|<!-- ```BASH systemctl {start,stop,restart,reload} <unit>``` -->
|enable or disable autostart of *units* |`systemctl {enable,disable} <unit> ... <unit>`| <!-- ```BASH systemctl {enable,disable} <unit> ... <unit> ``` -->
|list loaded services| `systemctl -t service`| <!-- ```BASH systemctl -t service ``` -->
|list loaded *unitfiles* of type `<unitType>` |`systemctl -t <unitType>`<br>is valid if `<unitType>` &isin; {service,socket,device,mount,automount,path,scope,slice,swap,target,timer}.|<!--```BASH systemctl -t <unitType>``` -->


## subcommands
```systemctl <subcommand>```
|effect|command|
|-|-|
|list installed services|```systemctl list-unit-files -t service```|
|list installed *units* of type `<unitType>`|```systemctl list-unit-files -t <unitType>```|
|show status of a *unit*|```systemctl status <unit>```|
|parses _unitfiles_<br>but doesn't change the configuration<br>and behaviour of the running *units*<br>(so effectively checks syntax of parsed unitfiles?)|```systemctl deamon-reaload```|
>>>>>>> 91d8ff0ba33512d52a03bf9d5f404c050f1b0bcb
