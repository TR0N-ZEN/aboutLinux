# `coproc`

```
A  coprocess  is  executed
       asynchronously in a subshell [...]
       with a two-way pipe established between the executing shell and the coprocess. [...]

The recommended form to use for a coprocess is

       coproc NAME { command [redirections]; }
```

so for example I execute

```
coproc acoproc { while true; do { sleep 1; echo `date -u --iso-8601='seconds'`; } done ;}
```

while reading ...

```
When the coprocess is executed, the shell creates an array variable [...] named
       NAME  in  the context of the executing shell.
       The standard output of command is connected via a
         pipe to a [...]  file descriptor [that] is assigned to NAME[0].
       The standard input of command is connected via a
         pipe to a [...] file descriptor [that] is assigned to NAME[1]. [...]
```

So what are the numbers of the file descriptors (fd)?

```
for X in ${acoproc[@]}; do echo $X; done
63
60
```

I should be able to read from the stdout fd `63` ...

```
while IFS= read -r line <&63; do
  echo "Read line: $line";
done
```

which caused my terminal to output ...

```
Read line: 2025-02-23T00:37:40+00:00
Read line: 2025-02-23T00:37:41+00:00
Read line: 2025-02-23T00:37:42+00:00
```

and so on until the coprocess is terminated or reading from its stdout fd.

```
The process ID of the shell spawned to execute the coprocess is available as the value of the
variable NAME_PID.
```

, so `echo ${acoproc_PID}` responds with `476`.
