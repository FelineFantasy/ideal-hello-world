global _start

section .text
_start:
    mov rax, 1
    mov rdi, rax
    mov rsi, msg
    mov rdx, 14
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall

section .data
msg: db 'Hello, World!', 10
