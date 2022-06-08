`dpkg` - program for installation of programs in compiled format delivered as a file with the suffix `.deb`.  
Since the program is already compiled `dpkg` needs to be informed about what cpu architecture is used.  
```bash
dpkg --add-architecture i386
dpkg --remove-architecture i386
dpkg --print-architecture
dpkg --print-foreign-architectures
```
other commands are:
```bash
dpkg --install 
dpkg --configure
dpkg --remove
dpkg --list
dpkg --purge
dpkg --recursive
dpkg --listfiles
dpkg --search
dpkg --no-pager
# dpkg --
```
