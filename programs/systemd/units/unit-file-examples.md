<!-- <details><summary>examples</summary> -->

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

```
[Unit]
Description=My Shell Script

[Service]
Slice=AWESOME.slice
MemoryAccounting=yes
CPUAccounting=yes
CPUShares=256

[Install]
WantedBy=multi-user.target
```

```
[Unit]
Description=My Shell Script2

[Service]
Type=oneshot
ExecStart=/root/generate_load3.sh
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
Slice=AWESOME.slice

[Install]
WantedBy=multi-user.target
```

drop in files for `cat.service` are in the folder `/etc/systemd/system/cat.service.d/`, the files are name like `[0-9][0-9]-<arbitrary>.conf`
those files can contain everything under the `[<unitType>]` section, like:
```
[Service]
Slice=AWESOME.slice
MemoryAccounting=yes
CPUAccounting=yes
```
or 
```
[Service]
CPUShares=256
```
or change settings really fast via systemctl `systemctl set-property <unitname>.service CPUShares=1024` (don't kow if this is permanent and will be enterd in the unit file)

</details>

<details><summary>.timer</summary>

```
[Unit]
Description=<arbitrary>

[Timer]
OnBootSec=2min
OnUnitActiveSec=5min
Unit=<arbitrary>.service

[Install]
WantedBy=<arbitrary>.target
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

<!-- </details> -->