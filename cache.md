+ https://forum.ubuntuusers.de/topic/programm-benoetigt-libstdc-so/
+ `netstat -tulpenao`
+ `iptables -t <tableName> --list <chainName>`
  + https://www.thegeekstuff.com/2011/01/iptables-fundamentals/
  + https://www.netfilter.org/documentation/HOWTO/de/packet-filtering-HOWTO-7.html
+ https://www.tutorialspoint.com/data_communication_computer_network/transmission_control_protocol.htm

---

be 1.sh 
```bash
#!/bin/bash

read -d x -e PERSON
echo $PERSON

```
and
```cmd
echo x >> /proc/10/fd/0
echo afwxxawfx >> /proc/10/fd/0
```
doesn't stop the script running in process with id 10.

Why?
Is read directly reading from the keyboard under /dev/ ?


```
```