Package managers manage software.  
Considering software can be dependent on other software,  
a manager for this comes in useful since dependencies can grow complicated.  
So software is organized in packages.  
Packages are stored in a repository.  
So if one wants to install a package with a package manager,  
one needs to add sources from where packages can be downloaded,  
these sources are called repositories.  

package sources/repositories:
  + main (complies ubuntu licenses),
  + restricted (high importance but software-license is owned by someone else than Canonical),
  + universe (free license software, not offically supported, part of the ubuntu package sources),
  + multiverse (software under license of others causing restrictions, not offically supported),
  + partner (commercial, non-opensource, just integrated in sources for convinience like easy updating)
  + foreign sources (PPA from Launchpad)
    + `sudo add-apt-repository ppa:<LAUNCHPAD-NUTZERNAME>/<PPA-NAME>`
    + for installing additional external software from a repository at "Launchpad".
    + "Launchpad" is a webapplication from the company Canonical (also the creators of ubuntu)


```
# appearance
sudo apt install gnome-tweak-tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
```