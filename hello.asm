section .data
    msg db "Hello, World!", 0x0A
    len equ $ - msg

section .text
    global _start

_start:
    mov al, 1
    mov edi, eax
    mov esi, msg
    mov edx, len
    syscall

<<<<<<< HEAD
    mov rax, 60
    mov rdi, 0
=======
    mov al, 60
    xor edi, edi
>>>>>>> size
    syscall
