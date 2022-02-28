### Hintergrundprozesse
Prozess direkt im Hintergrund starten
Um einen Prozess im Hintergrund zu starten, hängt man einfach ein & an den Befehl an:

```/usr/bin/xeyes &```
Möchte man den Prozess jedoch zusätzlich von der Benutzer-Sitzung lösen (damit diese geschlossen werden kann, während der Prozess weiterläuft) ist die Verwendung von disown notwendig:

```/usr/bin/xeyes & disown``` 
Es empfiehlt sich aber, die vom Prozess erzeugte Ausgabe auf stdout bzw. stderr entweder in eine Logdatei umzuleiten. Dazu verwendet man bspw. nohup (wird wie sudo VOR dem eigentlichen Befehl notiert):

```nohup /usr/bin/xeyes > xeyes.log 2>&1 &``` 

#### Prozess unterbrechen und/oder in den Hintergrund schicken
Wenn man ein Programm oder einen Prozess in der Shell gestartet hat, kann man ihn mit der Tastenkombination Strg + Z einfrieren. Nun ist die Shell wieder freigegeben und man kann zum Beispiel Daten, die vom Prozess verwendet werden, bearbeiten oder sichern. Mit dem Befehl

```fg``` 
läuft der Prozess anschließend wieder (auf der Shell) weiter. Möchte man die Shell dauerhaft freigeben (also während der Prozess weiterläuft), gibt man statt fg

```bg``` 
ein, um den Prozess in den Hintergrund zu schicken. Nun kann man die Shell weiter benutzen oder auch schließen, während der Prozess im Hintergrund läuft.