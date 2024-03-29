# README.md

## Highest rated sources

+ <https://tldp.org/guides.html>
+ <https://www.gnu.org/software/bash/manual/bash.html>
+ <https://www.redhat.com/sysadmin/>
  + <https://www.redhat.com/sysadmin/linux-environment-variables>

---

## cache

+ programs
  + <https://www.tecmint.com/run-linux-command-without-saving-in-history/>
  + `find . -name '*.sh' -exec msdos2unix {} +`
    + <https://www.tecmint.com/35-practical-examples-of-linux-find-command/>
    + <https://www.ibm.com/docs/de/aix/7.2?topic=files-finding-find-command>
    + <https://riptutorial.com/bash/example/1845/executing-commands-against-a-found-file>
  + strange errors
    + <https://forum.ubuntuusers.de/topic/programm-benoetigt-libstdc-so/>
  + bash
    + <https://linuxize.com/post/bash-functions/>
  + networking
    + <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/consistent-network-interface-device-naming_configuring-and-managing-networking#doc-wrapper>
    + `netstat -tulpenao`
    + `iptables -t <tableName> --list <chainName>`
    + <https://www.thegeekstuff.com/2011/01/iptables-fundamentals/>
    + <https://www.netfilter.org/documentation/HOWTO/de/packet-filtering-HOWTO-7.html>
    + <https://www.tutorialspoint.com/data_communication_computer_network/transmission_control_protocol.htm>

```bash
ll -tm1 | head -n 6 | xargs rm -r --

docker restart `docker container ls --all \
| grep "24 minutes" \
| cut -d' ' -f1`

GIT_SSH_COMMAND="ssh -i /mnt/c/Users/T-Reichert/.ssh/personal_github -o ConnectTimeout=10" git clone git@github.com:TR0N-ZEN/windows-scripting.git
```

To test on windows with docker use
```powershell
docker stop u2; docker run -dit --rm --name u2 -v .\Desktop\aboutLinux\:/opt/aboutLinux/ debian sleep inf; docker exec -it u2 bash
```

```bash
```
