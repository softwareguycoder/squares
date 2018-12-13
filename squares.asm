; 
; FILENAME:     squares.asm
; CREATED BY:   Brian Hart
; DATE:         13 Nov 2018
; PURPOSE:      A simple assembly program for Linux, using NASM, demonstrating 
;               using a table to speed up the calculation of the squares of the integers 0-15
;

section .text
    global _start                       ; must be declared for linker (ld)
   
_start:
    xor ecx, ecx
    xor eax, eax
    mov ecx, 14
    mov al, BYTE [Squares+ecx]

    mov eax,1                           ; system call number (sys_exit)
    mov ebx,0                           ; process exit code
    int 0x80                            ; call kernel
    
section .data                           ; static data
    Squares:    db 0,1,4,9,16,25,36,49,64,81,100,121,144,169,196,225
    
section .bss                            ; dynamically-changed variables
    ; TODO: Add dynamically-changed variables here