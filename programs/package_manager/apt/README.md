`apt` utilizes `dpkg`.  

+ `dpkg` (operates on single package)
  + install
  + uninstall
  + remove program configuration files
+ [`apt`](apt.md) and [`apt-get`](apt-get.md)
  + dependencies between packages
  + searching
  + downloading (+ management of places to download from)
  + software version management (updating, upgrading, version pinning)
+ `apt-cache` search local information about packages and sources
+ `apt-clone` for syncronisation of installed packages across multiple computers
+ `apt-key` -- depcrecated, last appearance in Debian 11 and Ubuntu 20.04
+ `apt-pinning` ranking of package sources
+ `apt-file` search for package content
+ `apt-offline` inserting updates without internet connection
+ ...

The file `/etc/apt/sources.list` and the files inside  `/etc/apt/sources.list.d/` contain source addresses for downloading packages from.  


---

`apt`
+ `update`
+ `upgrade` doesn't remove packages for an upgrade if necessary
+ `full-upgrade` removes package for upgrade if necessary
+ `install`, `reinstall`, `remove`, `purge`
+ `autoremove`
+ `seach`
+ `list`
    + `--installed` | `--upgradable`
+ `edit-sources`
+ `show` information about a given package(s)
+ `search` searches for packages available in the registered repositories
+ ``
+ ``

---
+ https://www.howtogeek.com/234583/simplify-command-line-package-management-with-apt-instead-of-apt-get/