*systemd* is a deamon (background process) managing stuff.  
`systemctl` is a function callable in the shell to change systemd's behaviour.

systemd manages so called *units* which are manifasted as _unitfiles_ in the folders:
* */lib/systemd/system* (standard systemd unit files - determined by maintainer of linux distribution you use)
* */usr/lib/systemd/system* (from locally installed packages)
* */run/systemd/system* (temporary)
* */etc/systemd/system* (for your custom unit files, takes precendece over */usr/lib/systemd/system*)

_unitfiles_ can be 
\<unitfile\> := {  
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

As an example we have the _unitfile_ `theos.service`
```EDITOR
[Unit]
Description=Something
After=network-up.target

[Service]
ExecStart=/usr/local/bin/theosProgram

[Install]
WantedBy=multi-usr.target
```
|code|effect|
|-|-|
|`After=network-up.target`				|loads the *unitfile* containing this code after _network-up.target_|
|`ExecStart=/usr/local/bin/theosProgram`|execute the program in the given path if this unit is called to start|
|`WantedBy=multi-usr.target`			|the *target* at which this process described in the _unitfile_ will be loaded|
|-|-|

## targets  
are stages of the system  
and each stage has programs which are added to the pool of running programs  
making the system more complex  
this concept can be compared to runlevels


### dependencies
|||
|-|-|
|`Wants=<name>.service`		|please acitvate (i.e. start) *service* mentioned in *unitfile* containing this command in parallel with `<name>.service`|
|`WantedBy=<name>.target`	|please load *unitfile* containing this declaration in parallel with all the other mentioned *units* inside `<name>.target`|
|`Requires=<name>.target`	|must activate in parallel|
|`RequiredBy=<name>.target`	|must activate in parallel|
|`Before=<name>.target`		|must be activated before `<name>.target`|
|`After=<name>.target`		|must be activated after `<name>.target`|