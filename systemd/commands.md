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
`systemctl isolate <target>` puts system into state after \<target\> was reached  


---


## commands
|effect|command|
|-|-|
|start or stop *units* 									|`systemctl {start,stop,restart,reload} <unit>`|<!-- ```BASH systemctl {start,stop,restart,reload} <unit>``` -->
|enable or disable autostart of *units* 				|`systemctl {enable,disable} <unit> ... <unit>`| <!-- ```BASH systemctl {enable,disable} <unit> ... <unit> ``` -->
|list loaded/running *unitfiles* of type `<unitType>` 	|`systemctl -t <unitType>`<br>is valid if `<unitType>` &isin; {service,socket,device,mount,automount,path,scope,slice,swap,target,timer}.|<!--```BASH systemctl -t <unitType>``` -->


## subcommands
```systemctl <subcommand>```
|effect|command|
|-|-|
|list installed *units* of type `<unitType>`	|```systemctl list-unit-files -t <unitType>```|
|show status of a *unit* 						|```systemctl status <unit>```|
|parses _unitfiles_<br>but doesn't change the configuration<br>and behaviour of the running *units*<br>(so effectively checks syntax of parsed unitfiles?)|```systemctl deamon-reaload```|
