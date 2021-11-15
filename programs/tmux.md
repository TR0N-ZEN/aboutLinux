source https://wiki.ubuntuusers.de/tmux/

---

Tmux is a terminal splitter allowing you to interact with multiple terminals in parallel.  
Tmux is organised in sessions, each session has one or more windows and each window has one ore more panes.

To start a session and connect to its first window with:
```
tmux new -s <sessionName>
```
```
tmux attach <sessionName>
```
```
tmux ls
```
```
tmux kill-server
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