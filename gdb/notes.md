## GDB basic commands

> https://ncona.com/2019/12/debugging-assembly-with-gdb/

1. Start gdb

```
(gdb) gdb <name_of_.out_file>
(gdb) gdb basic.out
```

2. Add breakpoint

- Add breakpoint at \_start

```
(gdb) break _start
(gdb) b _start (works too)
```

3. Run the program, and stop at breakpoint

```
(gdb) run
```

4. Step through the program

```
(gdb) step
(gdb) s (works too)
```

5. Getting info using `info` command

> info for registers

- info for all registers

```
(gdb) info registers
(gdb) i r
```

- info for specific register (eg. rax)

```
(gdb) info register rax
(gdb) i r rax
```

- info for functions

```
(gdb) info functions
(gdb) i f
```

- get memory address for variable

```
(gdb) info address <var_name>
(gdb) i address <var_name>
```

6. Disassemble

```
(gdb) disassemble
(gdb) disass
```

7. Print

```
(gdb) print (<cast>) <var_name>
(gdb) print (int) VAR
```

8. Asterix (\*) operator

> to get the data at memory address

- print data at memory address

```
(gdb) print (<cast>) *memory_address_of_var
```

- set breakpoint at memory address

```
(gdb)  break *memory_address_of_var
(gdb)   *memory_address_of_var
```

> Quit gdb

```
(gdb) quit
(gdb) q
```
