section .data
; -----------
; Data section
; ------------ 

; Define constants
EXIT_SUCCESS equ 0 ; successful operation
SYS_exit equ 60  ; call code for terminate


bVar1 db 90 ; Byte (8-bit) variable declarations
wVar1 dw 9000 ; Word (16-bit) variable declarations
dVar1 dd 9000000; Double-word (32-bit) variable declarations
qVar1 dq 90000000 ; quadword (64-bit) variable declarations

; Text section
section .text
global _start
_start: 



; ************************************************************
; Done, terminate program.
last:
 mov rax, SYS_exit ; Call code for exit
 mov rdi, EXIT_SUCCESS ; Exit program with success
 syscall
