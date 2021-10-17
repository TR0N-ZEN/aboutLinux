|term|meaning|
|-|-|
|display server / window server / compositor 	|takes commands from programs and sends commands to the x-client who interacts with the hardware and draws elements on the screen</br>e.g. *X.OrgServer*|
|virtual terminal								|an emulated terminal inside a gui providing control over for example the programs running so starting and stopping them|
|(programs with) ClientSideDecoration			| are pgrms wth control over their existence so they have like closing buttons and can control clicks to it by itself without asking other programs;(these programs are often referred to as *gtk apps*; one of em is *gedit*);programs without ClientSideDecoration need a window manager|
|window manager 								| provides control over windows and their buttons and according functions and generates; *X-Monad*, *awesome*, *i3*, *icewm*, *compiz* (in Ubuntu) -- `\<wm> &` runs _\<wm>_ in the background while _\<wm>_ is any arbitrary program and so any window manager|
|desktop environment 							| Sammlung und Konfiguration von Programmen des digitalen Schreibtischs (eng.: desktop)|
|display manager / login manager 				| stellt graphischen Login bereit|


|program|effect|
|-|-|
|`startx`				|starts the x client but shouldnt it also start the server?|
|`ssh -X \<ipa-ddress>` | forward output of the x client on machine with \<ip-address> to local computer which executed this command|
|-						|-|
|-						|-|
|-						|-|
|-						|-|
