`steamcmd` is an interactive tool  
as root edit the sudoers file `nano /etc/sudoers`

to install it use 
```
mkdir steamcmd
cd steamcmd
curl http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -xf -
echo "alias steamcmd='~/steamcmd/steamcmd.sh'" >> ~/.bashrc
sudo apt-get install lib32gcc1
steamcmd
```
<!-- ```
curl -O http://media.steampowered.com/installer/steamcmd_linux.tar.gz
mkdir steamcmd
mv steamcmd_linux.tar.gz steamcmd
cd steamcmd
tar -xf steamcmd_linux.tar.gz
echo "alias steamcmd='~/steamcmd/steamcmd.sh'" >> ~/.bashrc
sudo apt-get install lib32gcc1
steamcmd
``` -->
`steamcmd` is used to install games via their _appid_ like so:
```
steamcmd +login anonymous +app_update <app-id> +validate +quit
```
`steamcmd` assumes a path for installation.
Search @https://steamdb.info/apps/ for `<app-id>`
| `<app-id>` | game         |
|------------|--------------|
| 1690800    | satisfactory |
| -          | -            |
| -          | -            |
+ savegame for satisfactory are held in `~/.config/Epic/FactoryGame/Saved/SaveGames/server`  
+ executable server `~/Steam/steamapps/common/SatisfactoryDedicatedServer/FactoryServer.sh`
