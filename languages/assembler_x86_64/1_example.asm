; ----------------------------------------------------------------------------------------
; Writes "Hello, World!" to the console using only system calls. Runs on 64-bit Linux only.
;
; To assemble and run:  make e1
; ----------------------------------------------------------------------------------------

section .data
    msg:	  db "Hello, world!", 0x0A, 0
    msg_len:  db $-msg  ; len(msg)

section .text
    global main

main:
    push rbp         ; create new stack frame
    mov rbp, rsp

    mov rax, 1       ; system call for write
    mov rdi, 1       ; stdout
    mov rsi, msg     ; address of string to output
    mov rdx, msg_len ; number of bytes of msg
    syscall          ; invoke operating system to do the write

    mov rsp, rbp     ; restore old stack frame
    pop rbp
    
    mov rax, 60      ; system call for exit
    mov rdi, 1       ; exit code 1
    syscall          ; invoke operating system to exit
