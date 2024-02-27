## .lst file notes

example from the list file generated from basic.asm file using yasm assembler

```
    11 00000000 5A                     bVar1 db 90
    12 00000001 2823                   wVar1 dw 9000
    13 00000003 40548900               dVar1 dd 9000000
    14 00000007 804A5D0500000000       qVar1 dq 90000000
```

First line:

```
11 00000000 5A bVar1 db 90
```

1. line number

   > line 11 to 14 for this example

2. relative address in memory in hex (0x)

   > eg. on line 11, the relative address is 0x00000000
   > while the second is 0x00000001, as the data type for the first value is "db" which takes up only 1 byte

3. value in hex placed in the memory

   > eg. on line 11, would be 0x5A

4. variable name
5. data type
6. value assigned
