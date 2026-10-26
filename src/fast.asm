section .text
    global _start

_start:
    xor eax, eax
    inc al
    mov edi, eax
    lea rsi, [rel msg]
    mov edx, msg_len
    syscall

    mov al, 60
    xor edi, edi
    syscall

msg db "Hello, World!", 10
msg_len equ $ - msg