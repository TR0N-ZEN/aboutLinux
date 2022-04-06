sources:
+ https://wiki.ubuntuusers.de/tmux/
+ https://leimao.github.io/blog/Tmux-Tutorial/
+ 

---

Tmux is a terminal splitter allowing you to interact with multiple terminals in parallel.  
Tmux is organised in sessions, each session has one or more windows and each window has one or more panes.
One window takes up the entire screen space usedby this tmux instance.

To start a session and connect to its first window with:  
```
tmux new-session -s <sessionName>
```

Start a session without switching to the sessions first window:  
```
tmux new-session -s <sessionName> -d
```

connect to session
```
tmux attach <sessionName>
```

List sessions
```
tmux ls
tmux list-sessions
```

kill all sessions
```
tmux kill-server
```

```
tmux rename-session
tmux rename-window
```

...
for more read output of
```
info tmux
```

When you are inside tmux you can control tmux by pressing keys.  
To declare that you want to control tmux u have to  
hold <kbd>Ctrl</kbd> and press <kbd>B</kbd> and releave and now press another key.  
The keys:
+ <kbd>d</kbd> - detach
+ <kbd>s</kbd> - overview windows and panes in current session?
+ <kbd>%</kbd> - split current window vertically
+ <kbd>"</kbd> - split current window horizontally
+ <kbd>&</kbd> - terminate current window
+ <kbd>x</kbd> - close current pane
+ <kbd>+</kbd> - rename current window (doesn't seem to work)
+ <kbd></kbd> - 
+ <kbd></kbd> - 


Start a new window:
```
tmux new-window -t <sessionIndex> -n <windowName>
```
send commands to a window
```
tmux send-keys -t <sessionName>:<windowName> "<ommand>" ENTER
```