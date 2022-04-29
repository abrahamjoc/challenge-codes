; ----------------------------------------------------------------------------------------
; Return the maximum number between 3 numbers without function. Runs on 64-bit Linux only.
;
; To assemble and run:  make e5
; ----------------------------------------------------------------------------------------

section .data
    msg:  db  "The maximun number is: %d", 0x0A, 0

section .text
    global main
    extern printf

main:
    push rbp      ; create new stack frame
    mov rbp, rsp

    mov rdx, 25   ; set 3th number = c
    mov rsi, 17   ; set 2th number = b
    mov rdi, 10   ; set 1th number = a


.compare_a_as_max:
    cmp rdi, rsi          ; compare  a  and  b
    jl .compare_b_as_max  ; if ( a < b ) verify is b is the max

    cmp rdi, rdx          ; compare  a  and  c
    jl .compare_b_as_max  ; if ( a < c ) verify is b is the max

    mov rax, rdi          ; as ( a > b  &&  a > c) set a as the max
    jmp return            ; and return


.compare_b_as_max:
    cmp rsi, rdi          ; compare  b  and  a
    jl .c_is_the_max      ; if ( b < a ) set c as the max

    cmp rsi, rdx          ; compare b  and  c
    jl .c_is_the_max      ; if ( b < c ) set c as the max

    mov rax, rsi          ; as ( b > a  &&  b > c) set b as the max
    jmp return            ; and return


.c_is_the_max:
    mov rax, rdx          ; set c as the max
    jmp return


return:
    mov rsp, rbp  ; restore old stack frame
    pop rbp
    ret           ; return max
