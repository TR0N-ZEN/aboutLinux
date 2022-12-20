package sources/repositories:
  + main (complies ubuntu licenses),
  + restricted (high importance but software-license is owned by someone else than Canonical),
  + universe (free license software, not offically supported, part of the ubuntu package sources),
  + multiverse (software under license of others causing restrictions, not offically supported),
  + partner (commercial, non-opensource, just integrated in sources for convinience like easy updating)
  + foreign sources (PPA from Launchpad)
    for installing additional external software from a repository at "Launchpad".
     "Launchpad" is a webapplication from the company Canonical (also the creators of ubuntu),  
     adding a repository via `sudo add-apt-repository ppa:<LAUNCHPAD-NUTZERNAME>/<PPA-NAME>`

```bash
# appearance
sudo apt install gnome-tweak-tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
```