; --------------------------------------------------------------------------------------------------------------------
; Sorts a previously declared array of numbers and writes to the console. Runs on 64-bit Linux only.
;
; NOTE: Using macros isn't better than to use call functions, because macros insert code rather than reuse a solution.
;
; To assemble and run:  make e8
; --------------------------------------------------------------------------------------------------------------------

section .defines
%define i    r12                    ; r12 is i
%define j    r13                    ; r13 is j
%define temp r14                    ; r14 is temp


section .data
    print_array_header:  db  "array[i] values:", 0x0A, 0
    print_array_value:   db  "array[%d] = %d", 0x0A, 0
    array_numbers:       db  10, 3, 7, 12, 21, 5, 0
    array_length:        equ $-array_numbers


section .macros
%macro for 1                        ; for validation
    inc %1                          ; index++
    mov rax, %1                     ; load index (i or j)
    mov rbx, array_length-1         ; load array length
    cmp rax, rbx                    ; compare index with array_length

    %define for_r12 .for_i
    %define for_r13 .for_j
    jl for_%1                       ; jump to .for_i or .for_j if ( index < array_length )
%endmacro

%macro read_array_values_rbx_rcx 0  ; load in rbx=array_numbers[j] and rcx=array_numbers[j+1]
    lea rax, [array_numbers+j]      ; set address of array_numbers[j]
    mov rbx, 0                      ; initialization of rbx
    mov bl, [rax]                   ; set 1 byte from address of rax ==>  rbx = array_numbers[j]

    lea rax, [array_numbers+j+1]    ; load array values from j+1 reference
    mov rcx, 0                      ; initialization of rcx
    mov cl, [rax]                   ; set 1 byte from address of rax ==>  rcx = array_numbers[j+1]
%endmacro

%macro swap_array_values 0          ; swap array values for sorting
    mov temp, rbx                   ; temp = array_numbers[j]
    mov rbx, rcx                    ; rbx  = array_numbers[j+1]
    mov rcx, temp                   ; rcx  = array_numbers[j]

    lea rax, [array_numbers+j]      ; array_numbers[j] = rbx
    mov [rax], bl

    lea rax, [array_numbers+j+1]    ; array_numbers[j+1] = rcx
    mov [rax], cl
%endmacro

%macro print_array 0                ; print result of array values
    mov rdi, print_array_header     ; print header
    call printf                     ; printf(print_array_header)

    mov i, 0
.for_print:                         ; print array values in i position
    lea rax, [array_numbers+i]      ; set address of array_numbers in i position
    mov rbx, 0                      ; initialization of rbx
    mov bl, [rax]                   ; rbx = array_numbers[i]

    mov rdi, print_array_value      ; set 1th function parameter: address of print_array_value
    mov rsi, i                      ; set 2th function parameter: i
    mov rdx, rbx                    ; set 3th function parameter: array_numbers[i]
    call printf                     ; printf(print_array_value, i, array_numbers[i])

    inc i                           ; for ( i=0; i <= array_length-1; i++ )
    mov rax, i                      ; rax = i
    mov rbx, array_length-1         ; rbx = array_length-1
    cmp rax, rbx                    ; compare rax and rbx
    jle .for_print                  ; jump to .for_print if ( i <= array_length-1 )
%endmacro


section .text
    global main
    extern printf                   ; stdio::printf

main:
    push rbp                        ; create new stack frame
    mov rbp, rsp

    mov i, 0                        ; i = 0
.for_i:                             ; for ( i=0; i<array_length-1; i++ )
    mov j, 0                        ; j = 0
.for_j:                             ; for ( j=0; j<array_length-1; j++ )
    read_array_values_rbx_rcx       ; rbx=array_numbers[j] && rcx=array_numbers[j+1]
    cmp rbx, rcx                    ; if ( array_numbers[j] > array_numbers[j+1] )
    jle .continue                   ; else continue
    swap_array_values               ; array_numbers[j]=array_numbers[j+1] && array_numbers[j+1]=array_numbers[j]
.continue:
    for j                           ; for j validation
    for i                           ; for i validation

    print_array                     ; print array sorted

    leave                           ; restore old stack frame
    mov	rax, 0                      ; exit(0)
    ret
