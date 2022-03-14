sources:
+ https://developer.valvesoftware.com/wiki/SteamCMD#Downloading_SteamCMD
+ 
+ 
+ 

---

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
| 4020       | GarrysMod    |
| -          | -            |
| -          | -            |
| -          | -            |


+ savegame for satisfactory are held in 
  + `~/.config/Epic/FactoryGame/Saved/SaveGames/server`  
  +
  +
+ executable server 
  + `~/Steam/steamapps/common/SatisfactoryDedicatedServer/FactoryServer.sh`  
  + `~/Steam/steamapps/common/GarrysModDS/srcds_run -console -game garrysmod +gamemode terrortown +sv_setsteamaccount <your token> +host_workshop_collection <collectionID> +maxplayers 12 +map gm_flatgrass`
    + `<collectionID>` 1526838171 for *Blizzards TTT*
    + `. ~/Steam/steamapps/common/GarrysModDS/srcds_run -console -game garrysmod +gamemode terrortown +sv_setsteamaccount <your token> +host_workshop_collection 1526838171 +maxplayers 12 +map ttt_rooftops_2016`
    + if server doenst start because `libstdc++.so.6` cannot be found install soem packages by entering 
    ```
    sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5
    sudo apt-get install lib32z1
    ```
  + 
  + 
+ miscelanous
  + https://old.e-smog.org/garrys-mod-ttt-dedicated-server-erstellenpart-2/
  + https://www.troubleinterroristtown.com/config/settings/
  + https://steamcommunity.com/sharedfiles/filedetails/?l=german&id=170589737
  + 
  + 
+ get gameserveraccounts https://steamcommunity.com/dev/managegameservers
+
+