## GDB basic commands

1. Start gdb

```
(gdb) gdb <name_of_.out_file>
(gdb) gdb basic.out
```

2. Add breakpoint

> Add breakpoint at \_start

```
(gdb) break _start
(gdb) b _start (works too)
```

3. Run the program, and stop at breakpoint

```
(gdb) run
```
