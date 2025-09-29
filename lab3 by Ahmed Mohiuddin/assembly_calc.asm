section .data
	hello:     db 'This is a simple calculator',10    ; 'Hello, World!' plus a linefeed character
	helloLen:  equ $-hello             ; Length of the 'Hello world!' string
  mult:     db 'Product:',
  multLen   equ $-mult
  newline   db 10
  sum:      db 'Sum:'
  sumLen:   equ $-sum
  prod:     db 'Result:',10
  prodLen:  equ $-prod
  result db 0
  
  
section .text
	global _start

_start:

	mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 0x80              ; Call the kernel
	mov eax, 4          
	mov ebx, 1           
	mov ecx, sum
	mov edx, sumLen 
	int 0x80
	
  mov al, 2 
  add al, 3
  
  add al, '0'
  
  mov [result], al
	mov eax, 4          
	mov ebx, 1           
	mov ecx, result
	mov edx, 1 
	int 0x80              ; Call the kernel

	mov eax, 4          
	mov ebx, 1           
	mov ecx, newline
	mov edx, 1 
	int 0x80

	mov eax, 4          ; Multiplication
	mov ebx, 1           
	mov ecx, mult
	mov edx, multLen 
	int 0x80
	
	mov al, 2
	mov bl, 3
	
	mul bl
	
	add al, '0'
	mov [result], al
	
	mov eax, 4          
	mov ebx, 1           
	mov ecx, result
	mov edx, 1
	int 0x80
	
	
	mov eax,1            ; The system call for exit (sys_exit)
	mov ebx,0            ; Exit with return "code" of 0 (no error)
	int 0x80;
	