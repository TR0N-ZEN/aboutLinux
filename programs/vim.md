# vim

Just execute `vimtutor` and play until you are bored.
Then execute `vim /usr/share/vim/vim91/doc/helphelp.txt` and
  then `vim `vim /usr/share/vim/vim91/doc/help.txt`.
Embrace the urge to try what you read about.


## what I found useful

To do actions multiple times record macros by pressing `qx` to record a macro
to the register `x` and stop the recording by pressing `q` again to replay the
macro go into normal mode an press `@x` press `3@x` to replay the macro in
register `x` three times [more](https://www.redhat.com/en/blog/use-vim-macros).


## options I use

+ `:dig` will show key combinations to write digraphs aka special characters
+ `:set virtualedit=all` to move cursor freely in not whitespaced places
+ `:set nowrap` to stop wrapping content
+ `:set undofile` automatically save and restore undo history
+ `:set nohls` no highlights all matches for the last used search pattern
