sources:
+ https://www.digitalocean.com/community/tutorials/understanding-systemd-units-and-unit-files
+ 

---


Unit files configure various things and so there are various types of units.  

| `<unitType>` | what it is                                                                                                                                                    |
|--------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| services     | programs                                                                                                                                                      |
| socket       | connection point between two or more programs or processes, if these terms describe different things                                                          |
| devices      | a device file recognized by the kernel                                                                                                                        |
| mounted      | a file system mount point                                                                                                                                     |
| automount    | a file system automount point                                                                                                                                 |
| path         | a file or directory in a file system                                                                                                                          |
| scope        | an externally created process                                                                                                                                 |
| slice        | a group of hierarchically organized units that manage system processes and hardware resources                                                                 |
| swap         | a swap file or swap device                                                                                                                                    |
| snapshot     | a saved state of the systemd manager                                                                                                                          |
| target       | is a collection of units for managing dependencies and startup behaviour; if all units of that list are loaded and running, the target is considered achieved |
| timer        | for executing commands at times which are defined inside the .timer unit-file                                                                                 |

unit files are located @
+ */lib/systemd/system* (standard systemd unit files - determined by maintainer of linux distribution you use)
+ */usr/lib/systemd/system* (from locally installed packages)
+ */run/systemd/system* (temporary)
+ */etc/systemd/system* (for your custom unit files, takes precendece over */usr/lib/systemd/system*)


# content of a unit file

an abstract unit file
```
[Unit]
Description=<arbitrary>

[<unitType>]
# key value pairs for according to option the chosen unitType offers

[Install]
WantedBy=<arbitrary>.target
```

Unit files are divided into the three sections `[Unit]`, `[<unitType>]` and `[Install]`.  
For each section there are possible keys to be defined:  
+ `[Unit]`: { `Wants`, (`WantedBy`,) `Requires`, (`RequiredBy`,) `Before`, `After`, ... }
+ `[<unitType>]`
  + `[Service]`    : { `ExecStart`, `ExecStartPr`, `ExecStartPos`, `WorkingDirect`, `User`, `Group`, ... }
  + `[Timer]`      : { `OnBootSec`, `OnUnitActiveSec`, `Unit`, ... }
  + `[Socket]`     : { `y`, `y`, `y`, `y`, ... }
  + `[Device]`     : { `y`, `y`, `y`, `y`, ... }
  + `[Mount]`      : { `y`, `y`, `y`, `y`, ... }
  + `[Automount]`  : { `y`, `y`, `y`, `y`, ... }
  + `[Path]`       : { `y`, `y`, `y`, `y`, ... }
  + `[Scope]`      : { `y`, `y`, `y`, `y`, ... }
  + `[Slice]`      : { `y`, `y`, `y`, `y`, ... }
  + `[Swap]`       : { `y`, `y`, `y`, `y`, ... }
  + `[Snapshot]`   : { `y`, `y`, `y`, `y`, ... }
  + `[Target]`     : { `y`, `y`, `y`, `y`, ... }
  + `[Timer]`      : { `y`, `y`, `y`, `y`, ... }
+ `[Install]`      : { `Alias`, `WantedBy`, `RequiredBy`, `Also`, `DefaultInstance` }

> caution the sections `[Unit]` and `[Install]` share some keys

---

# key types

## dependencies
|                                     |                                                                                                                            |
| ----------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `Wants=<name>.service`              | please acitvate (i.e. start) *service* mentioned in *unitfile* containing this command in parallel with `<name>.service`   |
| `WantedBy=<name>.target`            | please load *unitfile* containing this declaration in parallel with all the other mentioned *units* inside `<name>.target` |
| `Requires=<name>.target`            | must activate in parallel                                                                                                  |
| `RequiredBy=<name>.target`          | must activate in parallel                                                                                                  |
| `Before=<name>.[target\|mount]`     | must be activated before `<name>.[target\|mount]`                                                                          |
| `After=<name>.[target\|mount]`      | must be activated after `<name>.[target\|mount]`                                                                           |
| -                                   | -                                                                                                                          |
| -                                   | -                                                                                                                          |

