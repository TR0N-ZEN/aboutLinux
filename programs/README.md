# README

## hardware

| name           | explaination                                                       |
| -------------- | ------------------------------------------------------------------ |
| lsblk          | list info about block devices                                      |
| blkid          | block id - lists block devices and their ids                       |
| fdisk<br>gdisk | display and manipulate disk partition table                        |
| mkfs           | erstellen von filesystems (de: Dateisystemen), z.B. fat32, NTFS    |
| genfstab       | genrieren eines partition/filesystem table (de: Partitionstabelle) |
| arch           | returns cpu architecture                                           |
| uname          | get information about operating system                             |
| lshw           | lists hardware                                                     |
| lspci          | list pci devices                                                   |
|                | -                                                                  |
|                | -                                                                  |

## system confiuration

| name         | explaination                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| chroot       | change the root - wechselt die root, den Wurzelpunkt des Speichers, um so einfacher Systemänderungen vorzunehmen                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| arch-chroot  | Arch Version von chroot                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| pacstrap     | install packages to a root (point in storage which is the root of the storage an operating system works with)                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| pacman       | arch associated package manager                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| apt          | a debian associated package manager                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| dpkg         | debian package manager                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| loadkeys     | change keyboard layout to de-latin1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| systemctl    | (programs/systemd/commands.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | organiser for services and able to alter the power state of machine |
| useradd      | adds a user (`useradd [OPTIONS] USERNAME`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| id           | display information about current user                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| usermod      | modify user (`usermod -aG <group> <user>` - adds \<user> to \<group> in Ubuntu)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| userdel      | deletes user and it's user folder                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| groupadd     | adds a group (`groupadd [OPTIONS] USERNAME`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| groupmod     | modifies a group                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| groupdel     | deletes a group                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| passwd       | changes password of a user                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| su           | switch user                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| touch        | create a file                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ls           | list files                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| stat         | list files and detailed information                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ln           | create symbolic links                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| cat          | prints content of a file to the stdout                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| echo         | print file content to the system's stdandard output or to elsewhere using the ">" and possibly other operarors                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| nano, vim    | Texteditoren                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| mv           | move a file                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| cp           | copy a file                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| scp          | copy a file via ssh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| dd           | copy a file                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| chown        | change ownership                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| chmod        | change mode - changes read-write-execute access for owner,owner-group-member,stranger e.g.</br>`chmod 421 file1` (owner can read; owner-group-member can write; strangers can execute fle1);</br>`chmod 751 file1` (owner can read,write,execute; owner-group-member can read,execute; strangers can execute fle1);</br>so each digit x,y, in `chmod xyz file1` sets rights, x for the owner, y for the owner-group-member and z for strangers, the value of each digit determines the rights of the according user like so: 4 for read, 2 for write, 1 for execute |
| umask        | like `chmod`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| dhcpcd       | automatic configuration of dhcp network                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| nmcli        | networkmanager in RHL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| find         | finds files and directories in the given path and its subdirectories, e.g.</br>`find /etc -type f -name "*.conf` (returns every file inside /etc with case sensitive wildecard matching);</br>`find /etc -type f -iname "*.conf` (returns every file inside /etc with case unsensitive wildcard matching);</br>`find /home -type d` (returns every directory inside the directory /home);</br>`find /etc -perm 0664`;</br> `find /etc -size +1m`;</br>`find /etc -maxdepth 1`                                                                                       |
| tree         | lists directory structure                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| grep         | find patterns expressed in strings in files e.g.</br>`grep "password" /home/ego/desktop/*`;</br>`grep -i "password" /home/ego/desktop/*`</br>Flags: -i caseinsensitive; -n return lines in which patterns were found;                                                                                                                                                                                                                                                                                                                                               |
| cut          | get parts of a formatted input piped into cut                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| sort         | sort lines of text alphabetically or numerically                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| screen, tmux | manager for multiple terminals                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ip           | display information about internet protocol                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| mount        | make files in a device accesible                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ssh          | connect to another pc and login as a user                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| chsh         | change the default shell                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| gzip         | packaging tool                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| tar          | packaging tool                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| which        | find location of a binary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| whereis      | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| locate       | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ps           | get overview of processes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| systemd-cgls | get overview of processes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| systemd-cgtop| get overview of processes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| -            | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| -            | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| w            | users currently logged in and their processes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| who          | users currently logged in                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| users        | current users read from /var/run/utmp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| iptables     | network package filter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| xargs        | use piped data as values for parameters                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |

---

## miscelanous

---

| name      | explaination                                                         |
| --------- | -------------------------------------------------------------------- |
| bettercap | network-sniff,spoof,etc. suite                                       |
| ddrescue  | data recovery tool                                                   |
| ftp       | for file transfer                                                    |
| telnet    | ?                                                                    |
| tee       | ? sth like passing commands to stdout and a logfile at the same time |
| wget      | for making webrequests                                               |
| curl      | for making webrequests                                               |
| history   | for previously entered commands                                      |
| last      | history of last logins read from /var/log/wtmp                       |
| wc        | counting lines,words or characters                                   |
| ufw       | firewall                                                             |
| utmp      | -                                                                    |
| -         | -                                                                    |
| -         | -                                                                    |
| docker    | -                                                                    |
| netstat   | display network connections                                          |
| sed       | stream editor                                                        |
| df        | lists diskspace                                                      |
| du        | lists filesize                                                       |
| vim       | text editor  <https://www.keycdn.com/blog/vim-commands>              |
| kill      | kill processes by process id                                         |
| apk       | package manager for linux distribution alpine                        |
| make      | -                                                                    |
| bmon      | monitor network interface traffic statistics                         |
| -         | -                                                                    |


## take a look at:

aria2c
bat
bottom
broot
btop++
ccat
choose
colordiff
colorex
crush
delta
diff-so-fancy
dig
dstat
duf
dust
dutree
exa
falsisign
fuck
fx
fzf
glow
googler
goto
gping
gron
gulasch
hdparm
hexyl
HTTP Prompt
HTTPie
hub
hyperfine
icdiff
ioping
iproute2
jc
jq
kubtail
locate
logrotate
lolcat
lsd
lynis
map
mcfly
mkef2fs
mtr
musikcube
ncdu
nethogs
nmon
no more secrets
Oh My Posh
oh-heck
oping
procs
progress
pv
q
quota
reptyr
ripgrep
saidar
sd
skim
socket statistics
syslogd
talk
tcpdump
testdisk
tig
tracepath
ttyd
Ultimate Plumber
usbkill
viu
whereis
write
WTF
XMLStarlet
xonsh
xsv
xterm
xxh
z
zsh

