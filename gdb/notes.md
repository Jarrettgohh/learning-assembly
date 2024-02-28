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

- to continue to next breakpoint

```
(gdb) continue
(gdb) c
(gdb) continue <n>
(gdb) c <n>
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

9. Current activation (call depth)

```
(gdb) where
```

10. Examine contents of registers

- examine content of the stack

```
(gdb) x/<n><f><u> $rsp
```

> Legend:

1. Examine memory location `variable`

2. `n` number of locations to display, 1 is
   default.

3. `f` format: d – decimal (signed)

- x – hex
- u – decimal (unsigned)
- c – character
- s – string
- f – floating-point

3. `u` unit size: b – byte (8-bits)

- h – halfword (16-bits)
- w – word (32-bits)
- g – giant (64-bits)

> Quit gdb

```
(gdb) quit
(gdb) q
```
