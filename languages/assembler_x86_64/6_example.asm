; ------------------------------------------------------------------------------------------------
; Writes an array values declared previously in program to the console. Runs on 64-bit Linux only.
;
; To assemble and run:  make e6
; ------------------------------------------------------------------------------------------------

section .data
    array_msg_str:  db "Array of Hex values represents: %s", 0x0A, 0
    array_val_str:  db "* List array[ i]       Hex | Dec | Char:", 0x0A, 0
    array_val:      db "       array[%2d]  ==>   %2x | %3d |  %c", 0x0A, 0
    array_hex_val:	db 0x48, 0x65, 0x6C, 0x6C, 0x6F, 0x20, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x21, 0

section .text
    global main
    extern printf                   ; stdio::printf

main:
    push rbp                        ; create new stack frame
    mov rbp, rsp

    mov rdi, array_val_str          ; set 1th function parameter
    call printf                     ; printf(array_val_str);

    mov r12, 0                      ; set i=0
.for:
    lea r13, [array_hex_val + r12]  ; calculate address of position [i] in array_hex_val
    mov r14b, [r13]                 ; read 1 byte from calculated address array_hex_val[i] = r13 [00000000000000HH]

    mov rdi, array_val              ; set 1th function parameter = array_val address
    mov rsi, r12                    ; set 2th function parameter = i
    mov rdx, r14                    ; set 3th function parameter = r14 Hex  from array_hex_val[i]
    mov rcx, rdx                    ; set 4th function parameter = r14 Dec  from array_hex_val[i]
    mov r8, rdx                     ; set 5th function parameter = r14 Char from array_hex_val[i]
    call printf                     ; printf(array_val, i, array_hex_val[i], array_hex_val[i], array_hex_val[i])

    inc r12                         ; ++i
    cmp r14, 0                      ; compare array_hex_val[i] and '\0'
    jne .for                        ; if ( array_hex_val[i] !== '\0' ) continue for loop

    mov rdi, array_msg_str          ; set 1th function parameter = array_msg_str address
    mov rsi, array_hex_val          ; set 2th function parameter = array_hex_val address
    call printf                     ; printf(array_msg_str, array_hex_val)

    mov rsp, rbp                    ; restore old stack frame
    pop rbp

    mov	rax, 0                      ; exit(0)
    ret
