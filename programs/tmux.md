# tmux

sources:

+ <https://wiki.ubuntuusers.de/tmux/>
+ <https://leimao.github.io/blog/Tmux-Tutorial/>
+

---

Tmux is a terminal splitter allowing you to interact with multiple terminals in parallel.  
Tmux is organised in sessions, each session has one or more windows and each window has one or more panes.
One window takes up the entire screen space usedby this tmux instance.

To start a session and connect to its first window with:  

```bash
tmux new-session -s <sessionName>
```

Start a session without switching to the sessions first window:  

```bash
tmux new-session -s <sessionName> -d
```

connect to session

```bash
tmux attach <sessionName>
```

List sessions

```bash
tmux ls
tmux list-sessions
```

kill all sessions

```bash
tmux kill-server
```

```bash
tmux rename-session
tmux rename-window
```

...
for more read output of

```bash
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

Start a new window:

```bash
tmux new-window -t <sessionIndex> -n <windowName>
```

send commands to a window

```bash
tmux send-keys -t <sessionName>:<windowName> "<command>" ENTER
```
