; ----------------------------------------------------------------------------------------
; Writes "Hello, World!" to the console using printf from stdio lib c. Runs on 64-bit Linux only.
;
; To assemble and run:  make e2
; ----------------------------------------------------------------------------------------

section .data
msg:	db	"Hello, world!", 0x0A, 0

section .text
    global main
    extern printf  ; stdio::printf

main:
    push rbp       ; create new stack frame
    mov rbp, rsp

	lea rdi, [msg] ; address of string to output
	call printf    ; printf(msg);

    mov rsp, rbp   ; restore old stack frame
	pop rbp

	mov	rax, 0     ; return 0
	ret
