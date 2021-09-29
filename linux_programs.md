## interaction
|name|explaination|
|-|-|
|cat| |
|echo| print file content to the system's stdandard output or to elsewhere using the ">" and possibly other operarors|
|nano, vim |Texteditoren|
|ssh|connect remotely to another pc and login as a user|

## hardware
|name|explaination|
|-|-|
|lsblk| list info about block devices|
|fdisk, gdisk|display and manipulate disk partition table|
|mkfs | erstellen von filesystems (de: Dateisystemen), z.B. fat32, NTFS|
|genfstab | genrieren eines partition/filesystem table (de: Partitionstabelle)|
|arch|returns cpu architecture|

## system confiuration
|name|explaination|
|-|-|
|chroot| change the root - wechselt die root, den Wurzelpunkt des Speichers, um so einfacher Systemänderungen vorzunehmen|
|arch-chroot| Arch Version von chroot|
|pacstrap| install packages to a root (point in storage which is the root of the storage an operating system works with)|
|pacman| arch associated package manager|
|apt| a debian associated package manager|
|dpkg| debian package manager|
|loadkeys de-latin1| change keyboard layout to de-latin1
|dhcpcd| automatic configuration of dhcp network
|[systemctl](systemd\commands.md)| organiser for services and able to alter the power state of machine
|chown| change ownership
|chmod| change mode - changes read-write-execute access for owner,owner-group-member,stranger e.g.</br>`chmod 421 file1` (owner can read; owner-group-member can write; strangers can execute fle1);</br>`chmod 751 file1` (owner can read,write,execute; owner-group-member can read,execute; strangers can execute fle1);</br>so each digit x,y, in `chmod xyz file1` sets rights, x for the owner, y for the owner-group-member and z for strangers, the value of each digit determines the rights of the according user like so: 4 for read, 2 for write, 1 for execute 

---

miscelanous
---
|name|explaination|
|-|-|
| dd |copy a file and formatting according to operands|
| find | finds files and directories in the given path and its subdirectories, e.g.</br>`find /etc -type f -name "*.conf` (returns every file inside /etc with case sensitive wildecard matching);</br>`find /etc -type f -iname "*.conf` (returns every file inside /etc with case unsensitive wildcard matching);</br>`find /home -type d` (returns every directory inside the directory /home);</br>`find /etc -perm 0664`;</br> `find /etc -size +1m`;</br>`find /etc -maxdepth 1`|
| grep | find patterns expressed in strings in files e.g.</br>`grep "password" /home/ego/desktop/*`;</br>`grep -i "password" /home/ego/desktop/*`</br>Flags: -i caseinsensitive; -n return lines in which patterns were found;