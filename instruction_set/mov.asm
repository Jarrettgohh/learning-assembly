; ---------------------

; General format: mov <dest>, <src>

; Legends
; dest: destination operand, may be a register or a memory
; src: source operand

; ---------------------

; For memory to memory operation: mov <dest>, <type> [src_variable]

; Legends
; type: byte, word, dword, qword
; src_variable: memory location indicated by the source variable name
; ---------------------


section .data

EXIT_SUCCESS equ 0 ; successful operation
SYS_exit equ 60  ; call code for terminate

; bVar1 db 90 ; Byte (8-bit) variable declarations
; wVar1 dw 9000 ; Word (16-bit) variable declarations
; dVar1 dd 9000000; Double-word (32-bit) variable declarations
; qVar1 dq 90000000 ; quadword (64-bit) variable declarations

section .text
global _start
_start: 


; **** When the destination register operand is of double-word size and the source operand isof double-word size, the upper-order double-word of the quadword register is set to
; zero. This only applies when the destination operand is a double-word sized integer
; register.

; in the following example, the double-word source is `eax`, while the quadword register is `rcx`, with its upper-order double-word operand being `ecx`
; This only applies when the destination operand is a double-word sized integer register.

mov eax, 100 ; eax = 0x00000064
mov rcx, -1 ; rcx = 0xffffffffffffffff (binary: 111111111....)

; ecx = 0x00000064 
; the upper-order portion of the quad-word register `rcx` is set to 0, over-writing the 1's (in binary) from the previous instruction
; `ecx` is the lowest 32-bits portion of the `rcx` register
mov ecx, eax 


last:
 mov rax, SYS_exit ; Call code for exit
 mov rdi, EXIT_SUCCESS ; Exit program with success
 syscall




