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
+ https://www.shellhacks.com/systemd-service-file-example/
+ 
+ 

---
# systemd

**systemd** is a deamon (background process) managing stuff.  
`systemctl` is a function callable in the shell to change systemd's behaviour.

systemd can be interacted with through:
+ systemctl
+ journalctl
+ Init
+ networkd
+ logind
+ journald
+ ...

systemd manages so called **units** which are manifasted as **unit files** in the folders:
