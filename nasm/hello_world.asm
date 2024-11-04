section .data
    msg db 'Hello, World!', 0  ; null-terminated string

section .text
    global _start               ; Entry point

_start:
    ; Write the string to stdout
    mov rax, 1                 ; syscall: write
    mov rdi, 1                 ; file descriptor: stdout
    mov rsi, msg               ; pointer to the string
    mov rdx, 13                ; length of the string
    syscall                    ; invoke the syscall

    ; Exit the program
    mov rax, 60                ; syscall: exit
    xor rdi, rdi               ; exit code 0
    syscall                    ; invoke the syscall

