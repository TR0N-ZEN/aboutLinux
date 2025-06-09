# README

To find commands and functions use the shell builtin command `compgen`
like so for example `compgen -c system | sort | uniq`.

## hardware

| name           | explaination                                                       |
| -------------- | ------------------------------------------------------------------ |
| lsblk          | list info about block devices                                      |
| blkid          | block id - lists block devices and their ids                       |
| arch           | returns cpu architecture                                           |
| uname          | get information about operating system                             |
| lshw           | lists hardware                                                     |
| lspci          | list pci devices                                                   |
|                | -                                                                  |
|                | -                                                                  |

## system confiuration

### hardware

| name           | explaination                                                                                                          |
| -------------- | --------------------------------------------------------------------------------------------------------------------- |
| fdisk          |                                                                                                                       |
| parted         |                                                                                                                       |
| cfdisk         |                                                                                                                       |
| gdisk          | display and manipulate disk partition table                                                                           |
| genfstab       | genrieren eines partition/filesystem table (de: Partitionstabelle)                                                    |
| mkfs           | create filesystems (de: Dateisystemen), e.g. fat32, NTFS                                                              |
| ddrescue       | data recovery tool                                                                                                    |
| badblocks      | checks block device for defective sectors                                                                             |
| dd             | write directly to a block device                                                                                      |
| sync           | write buffered data to storage devices                                                                                |
| mount          | make files on a storage device accesible                                                                              |
| usdiskctl      | manage storage devices                                                                                                |
| df             | list storage device occupancy                                                                                         |
| dumpe2fs       |                                                                                                                       |
| e2fsck         |                                                                                                                       |
| fsck           |                                                                                                                       |


### kernel and program overview and logs

| name           | explaination                                                                                                          |
| -------------- | --------------------------------------------------------------------------------------------------------------------- | 
| dmesg          | view boot messages of the kernel                                                                                      |
| systemctl      | programs/systemd/commands.md                                                                                          |
| systemd-cgls   | get overview of processes                                                                                             |
| systemd-cgtop  | get overview of processes                                                                                             |
| ps             | get overview of processes                                                                                             |
| pgrep          | find processes by their name                                                                                          |
| pstree         | show tree of processes resmbling their parent-child realtion                                                          |
| -              | -                                                                                                                     |


### management of binaries and packages

| name           | explaination                                                                                                          |
| -------------- | --------------------------------------------------------------------------------------------------------------------- |  
| chroot         | change the root point of the file system e.g. to apply system changes easier when installing an os from a thumb drive |
| chsh           | change the default shell                                                                                              |
| arch-chroot    | Arch linux version von chroot                                                                                         |
| pacstrap       | install packages to a root (point in storage which is the root of the storage an operating system works with)         |
| pacman         | arch linux associated package manager                                                                                 |
| dpkg           | debian package manager                                                                                                |
| apt            | a debian associated package manager                                                                                   |
| which          | find location of a binary                                                                                             |
| whereis        | -                                                                                                                     |
| locate         | -                                                                                                                     |


### user management

| name           | explaination                                                                                                          |
| -------------- | --------------------------------------------------------------------------------------------------------------------- |  
| id             | display information about current user                                                                                |
| useradd        | adds a user (`useradd [OPTIONS] USERNAME`)                                                                            |
| su             | switch user                                                                                                           |
| usermod        | modify user (`usermod -aG <group> <user>` - adds \<user> to \<group> in Ubuntu)                                       |
| userdel        | deletes user and it's user folder                                                                                     |
| groupadd       | adds a group (`groupadd [OPTIONS] USERNAME`)                                                                          |
| groupmod       | modifies a group                                                                                                      |
| groupdel       | deletes a group                                                                                                       |
| passwd         | changes password of a user                                                                                            |
| users          | current users read from /var/run/utmp                                                                                 |
| w              | users currently logged in and their processes                                                                         |
| who            | users currently logged in                                                                                             |
| finger         | get information about other users                                                                                     |
| last           |                                                                                                                       |


| name           | explaination                                                                                                          |
| -------------- | --------------------------------------------------------------------------------------------------------------------- |  
| loadkeys       | change keyboard layout                                                                                                |
| localectl      | change language settings                                                                                              |


### file management

| name           | explaination                                                                                                          |
| -------------- | --------------------------------------------------------------------------------------------------------------------- |  
| touch          | create a file                                                                                                         |
| mkdir          | create a directory/folder                                                                                             |
| ls             | list files                                                                                                            |
| stat           | list files and detailed information                                                                                   |
| du             | list size of a file                                                                                                   |
| cp             | copy a file                                                                                                           |
| mv             | move a file                                                                                                           |
| rm             | remove files or directories                                                                                           |
| ln             | create symbolic links                                                                                                 |
| scp            | copy a file via ssh                                                                                                   |
| cat            | prints content of a file to the stdout                                                                                |
| od             | prints content of a file as hexadecimal or octal to the stdout                                                        |
| file           | analyse file content                                                                                                  |
| fold           | format file content                                                                                                   |
| comm           |                                                                                                                       |
| diff           |                                                                                                                       |
| diff3          |                                                                                                                       |
| dircmp         | compare folder structures                                                                                             |
| csplit         |                                                                                                                       |
| split          |                                                                                                                       |
| expand         |                                                                                                                       |
| tr             |                                                                                                                       |
| zcat           |                                                                                                                       |
| zless          |                                                                                                                       |
| bzcat          |                                                                                                                       |
| chown          | change ownership                                                                                                      |
| chmod          | change mode - changes read-write-execute access for
                   owner,owner-group-member,stranger e.g.</br>`chmod 421 file1` (owner can read;
                   owner-group-member can write; strangers can execute fle1);</br>`chmod 751
                   file1` (owner can read,write,execute; owner-group-member can read,execute;
                   strangers can execute fle1);</br>so each digit x,y, in `chmod xyz file1` sets
                   rights, x for the owner, y for the owner-group-member and z for strangers, the
                   value of each digit determines the rights of the according user like so: 4 for
                   read, 2 for write, 1 for execute                                                                                      |
| umask          | set inverse bits of chmod for future file creation                                                                    |

| find           | finds files and directories in the given path and its
                   subdirectories, e.g.</br>`find /etc -type f -name "*.conf` (returns every file
                   inside /etc with case sensitive wildecard matching);</br>`find /etc -type f
                   -iname "*.conf` (returns every file inside /etc with case unsensitive wildcard
                   matching);</br>`find /home -type d` (returns every directory inside the
                   directory /home);</br>`find /etc -perm 0664`;</br> `find /etc -size
                   +1m`;</br>`find /etc -maxdepth 1`                                                                                     |
| tree           | lists directory structure                                                                                             |

| grep           | find patterns expressed in strings in files e.g.</br>`grep
                   "password" /home/ego/desktop/*`;</br>`grep -i "password"
                   /home/ego/desktop/*`</br>Flags: -i caseinsensitive; -n return lines in which
                   patterns were found;                                                                                                  |
| sort           | sort lines of text alphabetically or numerically                                                                      |
| uniq           |                                                                                                                       |
| paste          | concatenate content of several files in as columns                                                                    |
| cut            | get parts of a formatted input piped into cut                                                                         |
| xargs          | use piped data as values for parameters                                                                               |
| gzip           | compression tool                                                                                                      |
| tar            | compression tool                                                                                                      |
| bzip2          | compression tool                                                                                                      |


### network management

| name           | explaination                                                                                                          |
| -------------- | --------------------------------------------------------------------------------------------------------------------- |  
| dhcpcd         | automatic configuration of dhcp network                                                                               |
| ip             | display information about internet protocol                                                                           |
| nmcli          | networkmanager in red hat linux distributions                                                                         |
| iptables       | network package filter                                                                                                |
|                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |

---

## miscelanous

| name      | explaination                                                         |
| --------- | -------------------------------------------------------------------- |
| -         | -                                                                    |
| tput      | terminal and cursor control                                          |
| wall      | send message to all linux users                                      |
| write     | send message to aonter linux user                                    |
| mesg      | allow or dissalow messages to linux users                            |
| stty      | query and set terminal options                                       |
| setterm   | set terminal options                                                 |
| -         | -                                                                    |
| apropos   | search all manapages for text                                        |
| bettercap | network-sniff,spoof,etc. suite                                       |
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
| nl        | enumerate input and print to stdout                                  |
| -         | -                                                                    |
| tmux      | manager for multiple terminals                                       |
| screen    | manager for multiple terminals                                       |
| ssh       | connect to another pc and login as a user                            |
| -         | -                                                                    |
| -         | -                                                                    |


## take a look at:

```
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
```
