; Tiny handcrafted ELF64 hello-world (no linker, no libc).
; Assemble with: nasm -f bin -o hello_small small.asm

BITS 64
org 0x400000

ehdr:
    db 0x7F, "ELF", 2, 1, 1, 0     ; e_ident: magic, 64-bit, little-endian, current version
    dq 0                            ; e_ident padding
    dw 2                            ; e_type: ET_EXEC
    dw 0x3E                         ; e_machine: x86-64
    dd 1                            ; e_version
    dq _start                       ; e_entry
    dq phdr - $$                    ; e_phoff
    dq 0                            ; e_shoff
    dd 0                            ; e_flags
    dw ehdrsize                     ; e_ehsize
    dw phdrsize                     ; e_phentsize
    dw 1                            ; e_phnum
    dw 0                            ; e_shentsize
    dw 0                            ; e_shnum
    dw 0                            ; e_shstrndx

phdr:
    dd 1                            ; p_type: PT_LOAD
    dd 5                            ; p_flags: PF_R | PF_X
    dq 0                            ; p_offset
    dq $$                           ; p_vaddr
    dq $$                           ; p_paddr
    dq filesize                     ; p_filesz
    dq filesize                     ; p_memsz
    dq 0x1000                       ; p_align

_start:
    mov eax, 1                      ; sys_write
    mov edi, 1                      ; stdout
    mov esi, msg                    ; buffer
    mov edx, msg_len                ; length
    syscall

    mov eax, 60                     ; sys_exit
    xor edi, edi                    ; exit code 0
    syscall

msg db "Hello, World!", 0x0A
msg_len equ $ - msg

ehdrsize equ phdr - ehdr
phdrsize equ _start - phdr
filesize equ $ - $$
