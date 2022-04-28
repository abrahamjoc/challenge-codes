; ----------------------------------------------------------------------------------------
; Return "the result of a sum function with 2 values". Runs on 64-bit Linux only.
;
; To assemble and run:  make e3 and echo $?
; ----------------------------------------------------------------------------------------

section .text
    global main

sum:                        ; sum function
    push rbp                ; create new stack frame
    mov rbp, rsp

    sub rsp, 16             ; reserve 16 bytes for local vars
    mov [rbp-8] , rdi       ; local variable from parameter 1
    mov [rbp-16], rsi       ; local variable from parameter 2

    mov rdx, [rbp-8]        ; set parameter 1 in rdx
    mov rax, [rbp-16]       ; set parameter 2 in rax
    add rax, rdx            ; rax = rax + rdx

    mov rsp, rbp            ; restore old stack frame
    pop rbp
    ret                     ; return rax and jump to main

main:                       ; main function
    push rbp                ; create new stack frame
    mov rbp, rsp

    mov rsi, 7              ; set parameter 2
    mov rdi, 3              ; set parameter 1
    call sum                ; execute sum function

    mov rsp, rbp            ; restore old stack frame
    pop rbp
    ret                     ; return result code in rax
