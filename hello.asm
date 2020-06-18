; hello, world using printf

section .data

msg: db "hello ✨", 10, 0

section .text
extern _printf
global _main

_main:
    push rbp

    mov rax, 0
    mov rdi, msg
    call _printf

    pop rbp

    mov rax, 0 ; success
    ret
