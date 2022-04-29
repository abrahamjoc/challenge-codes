; ----------------------------------------------------------------------------------------
; Writes "arguments" passed it into the program to the console. Runs on 64-bit Linux only.
;
; To assemble and run:  make e4
; ----------------------------------------------------------------------------------------

section .data
args_qty_msg:     db  "This program received %d arguments.", 0x0A, 0
args_passed_msg:  db  "And the arguments passed into program were:", 0x0A, 0
arg_value_ms:     db  "* %d = %s", 0x0A, 0

section .text
    global main
    extern printf           ; stdio::printf

main:
    push rbp                ; create new stack frame
    mov rbp, rsp

    sub rsp, 16
    mov [rbp-8], rdi        ; int argc
    mov [rbp-16], rsi       ; char **argv

    mov rsi, rdi            ; set 2th parameter = argc
    mov rdi, n_args_str     ; set 1th parameter = address of n_arg_str
    call printf             ; printf(n_arg_str, argc);

    mov r12, 0              ; set i=0
.loop:
    mov rax, [rbp-16]       ; load address of argv   = **argv
    lea rax, [rax + 8*r12]  ; calculate [i] of argv  = *argv[i]
    mov rax, [rax]          ; set address of argv[i] = argv[i]

    mov rdi, arg_value      ; set 1th parameter      = *arg_value
    mov rsi, r12            ; set 2th parameter      = i
    mov rdx, rax            ; set 3th parameter      = char* argv[i]
    call printf             ; printf(arg_value, i, argv[i]);

    inc r12                 ; i++
    cmp r12, [rbp-8]        ; compare i and argc
    jl .loop                ; goto to .loop if ( i < argc )

    mov rsp, rbp            ; restore old stack frame
    pop rbp

    mov	rax, 0              ; exit(0)
    ret
