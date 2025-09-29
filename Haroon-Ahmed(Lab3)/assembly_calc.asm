section .data
    msgAdd  db "Addition Result: ",0
    msgMul  db "Multiplication Result: ",0
    newline db 10,0
    buffer  db 20 dup(0)

section .text
    global _start

;--------------------------------------
; num_to_str: convert RAX → buffer
; returns RSI = pointer to string
;--------------------------------------
num_to_str:
    mov rcx, buffer+19
    mov byte [rcx], 0        ; null terminator
    mov rbx, 10
.convert:
    dec rcx
    xor rdx, rdx
    div rbx                  ; RAX / 10
    add dl, '0'
    mov [rcx], dl
    test rax, rax
    jnz .convert
    mov rsi, rcx             ; return pointer in RSI
    ret

;--------------------------------------
; print (RSI points to null-terminated string)
;--------------------------------------
print_str:
    mov rax, 1               ; sys_write
    mov rdi, 1               ; stdout
    mov rdx, 0
.len:
    cmp byte [rsi+rdx], 0
    je .go
    inc rdx
    jmp .len
.go:
    syscall
    ret

_start:
    ; Hardcoded numbers
    mov r8, 8
    mov r9, 3

    ; ----- ADDITION -----
    mov rax, r8
    add rax, r9
    call num_to_str          ; RSI = number string
    mov rbx, rsi             ; save number pointer
    mov rsi, msgAdd
    call print_str
    mov rsi, rbx             ; restore number pointer
    call print_str
    mov rsi, newline
    call print_str

    ; ----- MULTIPLICATION -----
    mov rax, r8
    imul rax, r9
    call num_to_str          ; RSI = number string
    mov rbx, rsi             ; save number pointer
    mov rsi, msgMul
    call print_str
    mov rsi, rbx             ; restore number pointer
    call print_str
    mov rsi, newline
    call print_str

    ; Exit
    mov rax, 60
    xor rdi, rdi
    syscall
