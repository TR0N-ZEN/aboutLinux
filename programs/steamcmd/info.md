sources:
+ https://developer.valvesoftware.com/wiki/SteamCMD
+ https://unix.stackexchange.com/questions/463708/uninstall-a-steam-game-from-the-console
+ https://satisfactory.fandom.com/wiki/Dedicated_servers/Running_as_a_Service
  + https://satisfactory.fandom.com/wiki/Dedicated_servers
+ https://old.e-smog.org/garrys-mod-ttt-dedicated-server-erstellenpart-2/
+ https://www.troubleinterroristtown.com/config/settings/
+ https://steamcommunity.com/sharedfiles/filedetails/?l=german&id=170589737
+ get gameserveraccounts https://steamcommunity.com/dev/managegameservers

---

`steamcmd` is an interactive tool  
<!-- as root edit the sudoers file `nano /etc/sudoers`   -->

To install it  
create a user named steam with `sudo adduser steam`  
and execute install.sh.

`steamcmd` is used to install games via their _appid_ like so:
```
steamcmd +force_install_dir <install_directory> +login anonymous +app_update <app-id> validate +quit
```


| `<app-id>` | game                          |
|------------|-------------------------------|
| 1690800    | satisfactory dedicated server |
| 4020       | GarrysMod dedicated server    |
| -          | -                             |
| -          | -                             |
| -          | -                             |
Search @https://steamdb.info/apps/ for `<app-id>`

+ satisfactory
  + install: `steamcmd +force_install_dir ~/SatisfactoryDedicatedServer +login anonymous +app_update 1690800 validate +quit`
  + server: `~/SatisfactoryDedicatedServer/FactoryServer.sh`
  + savegame: `~/.config/Epic/FactoryGame/Saved/SaveGames/server`
+ garrysmod
  + install: `steamcmd +force_install_dir ~/GarrysModDS +login anonymous +app_update 4020 validate +quit`
  + server: `~/GarrysModDS/srcds_run -console -game garrysmod +gamemode terrortown +sv_setsteamaccount <your token> +host_workshop_collection <collectionID> +maxplayers 12 +map gm_flatgrass`
    + if server doesn't start because `libstdc++.so.6` cannot be found install some packages by entering  
      `sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1`
    + `<collectionID>` 1526838171 for *Blizzards TTT*
    + 
  +
+

---

for later:
+ 
+ 
+ 