sources:
* https://www.freedesktop.org/software/systemd/man/systemctl.html

---

## units
$<unitType> \quad := \quad service|socket|device|mount|automount|path|scope|slice|swap|target|timer$  
$<unit> \quad := \quad <name>.<unitType>$


`systemctl -t target` will maybe list all targets running  
`systemctl list-unit-files -t targets` lists all installed targets  
`systemctl isolate <target>` puts system into state after \<target\> was reached  


---


## subcommands
```systemctl <subcommand>```
|effect|command|
|-|-|
|list installed *units* of type `<unitType>`	|```systemctl list-unit-files -t <unitType>```|
|show status of a *unit* 						|```systemctl status <unit>```|
|parses _unitfiles_<br>but doesn't change the configuration<br>and behaviour of the running *units*<br>(so effectively checks syntax of parsed unitfiles?)|```systemctl deamon-reaload```|
### commands
+ `systemctl`
	+ `[start|stop|restart|reload] <unit> ... <unit>`
	+ `[enable|disable] <unit> ... <unit>`
	+ `status <unit>`
	+ `list-unit --state=<state>`
	+ `list-unit-files`
	+ `-t <unitType>`<br>`--type=<unitType>`

### targets 
those groups can be ompared to "Runlevels" (what are Runlevels?)  
Runlevels are states of the system running on the pc.  
The higher the runlevel the greater the complexity of the system, meaning more programs are running.  
Targets are custom runlevels. They are called targets because the system reaches stages/targets while loading.  
