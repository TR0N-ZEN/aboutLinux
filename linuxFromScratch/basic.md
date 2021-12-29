resource:
+ https://www.linuxfromscratch.org/lfs/view/11.0-systemd/index.html
+ https://tldp.org/HOWTO/Software-Building-HOWTO-2.html

---

## building from source
### prerequisites
+ downloading file with suffix `.tar.gz` or `.tgz`
+ unpacking files with:
    + `tar xzvf <filename>`
    + `gzip -cd <filename> | tar xvf -`
    + `gunzip -c <filename> | tar xvf -`

(`tar xyvf filename` to preview whate woud be there if you unpacked the archive)  
### building
+ _Makefile_ is a script for compiling and building the executables and more
    + `make` compile and build
    + `make install` predefined directories
    + `make clean` remove stale object (`.o`) files
    + `make -n` preview commands for the build process
+ _Imakefile_ is for more complex software
    + `Imake` construct a _makefile_ from an _Imakefile_
    + `xmkmf` frontend for `Imake`


Your general installation procedure will therefore be:  
+ Read the README file and other applicable docs.
+ Run `xmkmf -a`, or the INSTALL or configure script.
+ Check the Makefile.
+ If necessary, run `make clean`, `make <Makefiles>`, `make includes`, and `make depend`.
+ Run `make`.
+ Check file permissions.
+ If necessary, run `make install`.
