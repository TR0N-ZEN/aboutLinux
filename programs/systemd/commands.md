
## commands
```systemctl <command>```
| effect                  | `<command>`           |
| ----------------------- | --------------------- |
| list installed *units*  | ```list-unit-files``` |
| list loaded *units*     | ```list-units```      |
| show status of a *unit* | ```status <unit>```   |
| parses *unit-files*     | ```deamon-reaload```  |
### commands
+ `systemctl`
  + [`start`|`stop`|`restart`|`reload`] `<unit> ... <unit>`
  + [`enable`|`disable`] `<unit> ... <unit>`
  + `status <unit>`
  + `list-units` | `list-unit-files`
    + `--state=<state>`
    + `-t <unitType>` | `--type=<unitType>`
  + `edit`
  + [`mask`, `unmask`]