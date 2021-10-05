sources:
* https://www.freedesktop.org/software/systemd/man/systemctl.html

---

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


### commands
```BASH
systemctl {start,stop,restart,reload} <unit>
```

```BASH
systemctl status <unit>
```

list loaded services:
```BASH
systemctl -t service 
```

list installed services:
```BASH
systemctl list-unit-files -t service 
```

enable or disable autostart 
```BASH
systemctl {enable,disable} <unit> ... <unit>
```


### targets
are groups of units
those groups can be ompared to "Runlevels" (what are Runlevels?)

