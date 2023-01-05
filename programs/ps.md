One of the most basic process monitors:  

```
ps -eo tty,nice,pid,ppid,comm,args

# or

ps -Teo tty=TTY,nice=NICE,pid,ppid,args

# or

ps -eo "stat pid ppid"
```

