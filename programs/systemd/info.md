sources:
+ `man systemd`
+ `man systemctl`
+ `man service`
+ https://www.freedesktop.org/software/systemd/man/systemctl.html
+ https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/ch-getting_started#Installing-software
+ https://wiki.ubuntuusers.de/systemd/Units/, ...
+ https://www.freedesktop.org/software/systemd/man/systemd.unit.html#; 
  + https://www.freedesktop.org/software/systemd/man/systemd.syntax.html#
  + https://www.freedesktop.org/software/systemd/man/systemd.time.html#Calendar%20Events

---
# systemd

*systemd* is a deamon (background process) managing stuff.  
`systemctl` is a function callable in the shell to change systemd's behaviour.

systemd manages so called *units* which are manifasted as _unitfiles_ in the folders:
* */lib/systemd/system* (standard systemd unit files - determined by maintainer of linux distribution you use)
* */usr/lib/systemd/system* (from locally installed packages)
* */run/systemd/system* (temporary)
* */etc/systemd/system* (for your custom unit files, takes precendece over */usr/lib/systemd/system*)

<details><summary>example of the content of a unit-file named `theos.service`</summary>

```EDITOR
[Unit]
Description=Something
After=network-up.target

[Service]
ExecStart=/usr/local/bin/theosProgram

[Install]
WantedBy=multi-usr.target
```

<details><summary>explaination</summary>

| code                                    | effect                                                                        |
| --------------------------------------- | ----------------------------------------------------------------------------- |
| `After=network-up.target`               | loads the *unitfile* containing this code after _network-up.target_           |
| `ExecStart=/usr/local/bin/theosProgram` | execute the program in the given path if this unit is called to start         |
| `WantedBy=multi-usr.target`             | the *target* at which this process described in the _unitfile_ will be loaded |
| -                                       | -                                                                             |
| -                                       | -                                                                             |
| -                                       | -                                                                             |


</details>

</details>


## units
`<unitType>` := `service`|`socket`|`device`|`mount`|`automount`|`path`|`scope`|`slice`|`swap`|`target`|`timer`|`snapshot`    
`<unit>` := `name`.`unitType`
`<state>` := `loaded` | `active` | `running` | `failed` | 
> `<state>` can be of three categories of states:
>   + LOAD - reflection if unit was properly loaded LOAD := { `loaded`, `not-found` }
>   + ACTIVE - high-level unit activation state ACTIVE := { `active`, `inactive`, `failed` }
>   + SUB - low-level unit activation state, value is dependent on the `<unitType>` SUB(`<unitType>`) := { `dead`, ... }
>    + SUB(`service`)   := { `dead`, `exited`, `exited`, `failed` }
>    + SUB(`socket`)    := { `dead`, `running`, `listening` }
>    + SUB(`device`)    := { `plugged`, ... }
>    + SUB(`mount`)     := { `dead`, `mounted`, ... }
>    + SUB(`automount`) := { `dead`, `running`, ... }
>    + SUB(`path`)      := { `waiting`, ... }
>    + SUB(`scope`)     := { `running`, `abandon`, ... }
>    + SUB(`slice`)     := { `dead`, ... }
>    + SUB(`swap`)      := { `dead`, ... }
>    + SUB(`target`)    := { `dead`, `enabled`, `disabled`, `static`, `indirect`... }
>    + SUB(`timer`)     := { `dead`, ... }
>    + SUB(`snapshot`)  := { `dead`, ... }




`systemctl -t target` will maybe list all targets running  
`systemctl list-unit-files -t targets` lists all installed targets  
`systemctl isolate <target>` puts system into state after \<target\> was reached  


---


### `<unitType>`

| `<unitType>` | what it is                                                                                                        |
| -----------  | ------------------------------------------------------------------------------------------------------- |
| services     | programs                                                                                                |
| socket       | connection point between two or more programs or processes, if these terms describe different things    |
| devices      | a device file recognized by the kernel                                                                  |
| mounted      | a file system mount point                                                                               |
| automount    | a file system automount point                                                                           |
| path         | a file or directory in a file system                                                                    |
| scope        | an externally created process                                                                           |
| slice        | a group of hierarchically organized units that manage system processs                                   |
| swap         | a swap file or swap device                                                                              |
| snapshot     | a saved state of the systemd manager                                                                    |
| target       | is a list of units; if all units of that list are loaded and running, the target is considered achieved |
| timer        | for executing commands at times which are defined inside the .timer unit-file                           |

---

### `<state>`

`<state>` := `loaded` | `active` | `running` | `failed` | 
`<state>` can be of three categories of states:
  + LOAD - reflection if unit was properly loaded LOAD := { `loaded`, `not-found` }
  + ACTIVE - high-level unit activation state ACTIVE := { `active`, `inactive`, `failed` }
  + SUB - low-level unit activation state, value is dependent on the `<unitType>` SUB(`<unitType>`) := { `dead`, ... }
   + SUB(`service`)   := { `dead`, `exited`, `exited`, `failed` }
   + SUB(`socket`)    := { `dead`, `running`, `listening` }
   + SUB(`device`)    := { `plugged`, ... }
   + SUB(`mount`)     := { `dead`, `mounted`, ... }
   + SUB(`automount`) := { `dead`, `running`, ... }
   + SUB(`path`)      := { `waiting`, ... }
   + SUB(`scope`)     := { `running`, `abandon`, ... }
   + SUB(`slice`)     := { `dead`, ... }
   + SUB(`swap`)      := { `dead`, ... }
   + SUB(`target`)    := { `dead`, `enabled`, `disabled`, `static`, `indirect`... }
   + SUB(`timer`)     := { `dead`, ... }
   + SUB(`snapshot`)  := { `dead`, ... }
