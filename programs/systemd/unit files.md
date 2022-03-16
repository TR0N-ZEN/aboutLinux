## content of a *unit-file*

<details><summary>introducive example of a .service unit-file</summary>

```EDITOR
[Unit]
Description=Something
After=network-up.target

[Service]
ExecStart=/usr/local/bin/theosProgram

[Install]
WantedBy=multi-usr.target
```
and its meaning
| code                                    | effect                                                                        |
| --------------------------------------- | ----------------------------------------------------------------------------- |
| `After=network-up.target`               | loads the *unitfile* containing this code after _network-up.target_           |
| `ExecStart=/usr/local/bin/theosProgram` | execute the program in the given path if this unit is called to start         |
| `WantedBy=multi-usr.target`             | the *target* at which this process described in the _unitfile_ will be loaded |
| -                                       | -                                                                             |
</details>

## abstract *unit-file*
```
[Unit]
Description=<arbitrary>

[<unitType>]
# spezielle Schlüssel-Wert-Paare für den entsprechenden Unit-Typ

[Install]
WantedBy=<arbitrary>.target
```

a *unit-file* is divided into sections


keys for section:
+ `[Unit]`: { `Wants`, (`WantedBy`,) `Requires`, (`RequiredBy`,) `Before`, `After`, ... }
+ `[<unitType>]`
  + `[Service]`: { `ExecStart`, `ExecStartPr`, `ExecStartPos`, `WorkingDirect`, `User`, `Group`, ... }
  + `[Timer]` : { `OnBootSec`, `OnUnitActiveSec`, `Unit`, ... }
  + `[x]` : { `y`, ... }
+ `[Install]` : { `Alias`, `WantedBy`, `RequiredBy`, `Also`, `DefaultInstance` }

> caution the sections `[Unit]` and `[Install]` share some keys

<details><summary>examples</summary>

<details><summary>.service</summary>

```
[Unit]
Description=Something
After=network-up.target

[Service]
ExecStart=/usr/local/bin/theosProgram

[Install]
WantedBy=multi-usr.target
```

```
[Unit]
Description=My Shell Script

[Service]
ExecStart=/usr/bin/script.sh

[Install]
WantedBy=multi-user.target
```

</details>

<details><summary>.timer</summary>

```
[Unit]
Description=Eine kurze Beschreibung des Timers

[Timer]
OnBootSec=2min
OnUnitActiveSec=5min
Unit=name_der_zu_startenden_unit.service

[Install]
WantedBy=multi-user.target
```

```
[Unit]
# Auto-generated, DO NOT EDIT
Description=Timer renew for snap application certbot.renew
Requires=snap-certbot-1842.mount
After=snap-certbot-1842.mount
X-Snappy=yes

[Timer]
Unit=snap.certbot.renew.service
OnCalendar=*-*-* 08:01
OnCalendar=*-*-* 15:32

[Install]
WantedBy=timers.target
```

</details>

<details><summary>x</summary>


</details>

<details><summary>x</summary>


</details>

</details>

### dependencies
<details><summary>list for overview</summary>

|                                     |                                                                                                                            |
| ----------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `Wants=<name>.service`              | please acitvate (i.e. start) *service* mentioned in *unitfile* containing this command in parallel with `<name>.service`   |
| `WantedBy=<name>.target`            | please load *unitfile* containing this declaration in parallel with all the other mentioned *units* inside `<name>.target` |
| `Requires=<name>.target`            | must activate in parallel                                                                                                  |
| `RequiredBy=<name>.target`          | must activate in parallel                                                                                                  |
| `Before=<name>.[target|mount]`      | must be activated before `<name>.target`                                                                                   |
| `After=<name>.[target|mount]`       | must be activated after `<name>.target`                                                                                    |
| -                                   | -                                                                                                                          |
| -                                   | -                                                                                                                          |


</details>
