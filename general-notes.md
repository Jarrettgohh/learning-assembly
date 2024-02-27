## Assemble .asm file using `yasm`

```
$> yasm -g dwarf2 -f elf64 <name_of_assembly_file>.asm -l <name_of_list_file>.lst
```

- Flags

1. -g: for debugging
2. -f: ELF64 format
3. -l: list file name

## Link object files (.o) to form executable files using GNU gold linker (ld)

```
$> ld -g -o <name_of_file_to_output> <name_of_object_file>.o
```
