; ------------------------------------------------------------------------------------
; Reads stdin from console and Writes to console in stdout. Runs on 64-bit Linux only.
;
; To assemble and run:  make e7
; ------------------------------------------------------------------------------------

section .data
    header_msg: db "Write a message:", 0x0A, 0
    output_msg: db `You introduced in the buffer variable:\n --> %s`, 0

section .bss
    buffer: resb 255    ; declare buffer in memory = buffer_string[255]

section .text
    global main
    extern printf       ; stdio::printf

main:
    push rbp            ; create new stack frame
    mov rbp, rsp

    mov rdi, header_msg ; set 1th function parameter = address of header_msg
    call printf         ; printf(header_msg, buffer)

    mov rax, 0          ; system call for read
    mov rdi, 0          ; stdin
    mov rsi, buffer     ; address of string to input
    mov rdx, 255        ; number of bytes of buffer_in_string
    syscall             ; invoke operating system to do the read

    mov rdi, output_msg ; set 1th function parameter = address of output_msg
    mov rsi, buffer     ; set 2th function parameter = address of buffer
    call printf         ; printf(output_msg, buffer)

    leave               ; restore old stack frame
    mov	rax, 0          ; exit(0)
    ret
