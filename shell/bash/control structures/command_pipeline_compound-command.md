This part of `man 1 bash` is really important for now

```
DEFINITIONS
       The following definitions are used throughout the rest of this document.
       blank  A space or tab.
       word   A sequence of characters considered as a single unit by the shell.  Also known as a token.
       name   A  word  consisting  only of alphanumeric characters and underscores, and beginning with an alphabetic character or an
              underscore.  Also referred to as an identifier.
       metacharacter
              A character that, when unquoted, separates words.  One of the following:
              |  & ; ( ) < > space tab newline
       control operator
              A token that performs a control function.  It is one of the following symbols:
              || & && ; ;; ;& ;;& ( ) | |& <newline>

RESERVED WORDS
       Reserved words are words that have a special meaning to the shell.  The following words are recognized as reserved  when  un‐
       quoted  and either the first word of a command (see SHELL GRAMMAR below), the third word of a case or select command (only in
       is valid), or the third word of a for command (only in and do are valid):

       ! case  coproc  do done elif else esac fi for function if in select then until while { } time [[ ]]
```


```
time { { sleep 3 && sleep 1 && echo "LOL"; } | sed -e '/LOL/p' && sleep 2; echo 'END'; }
```

the output

```
LOL
LOL
END

real	0m6,014s
user	0m0,001s
sys	0m0,016s
```

and can be theoretically dismantled into

`time { p1 && p2; p3; }` where

+ *pipeline* `p1` is `{ sleep 3 && sleep 1 && echo "LOL"; } | sed -e '/LOL/p'`
+ *pipeline* `p2` is `sleep 2`
+ *pipeline* `p3` is `echo 'END'`
+ `p1 && p2; p3` is the *list* `l1`
+ `{ l1; }` is the *compound command* or more specific the *group command* `cc1`
+ `time cc1` is the *pipeline* `p0`

Commands inside one pipeline are started in parallel.
