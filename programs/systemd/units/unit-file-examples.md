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