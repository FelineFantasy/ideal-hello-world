section .text
    global _start

_start:
    mov al, 1
    mov edi, eax
    lea rsi, [rel msg]
    mov dl, msg_len
    syscall

    mov al, 60
    xor edi, edi
    syscall

msg db "Hello, World!", 10
msg_len equ $ - msg