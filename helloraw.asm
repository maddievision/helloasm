; hello, world using syscalls

section .data

msg: db "hello ✨", 10
.len equ $ - msg

section .text
global _main

_main:
    mov rax, 0x2000004 ; write
    mov rdi, 1 ; stdout
    mov rsi, msg
    mov rdx, msg.len
    syscall
    mov rax, 0x2000001 ; exit
    mov rdi, 0 ; success
    syscall
