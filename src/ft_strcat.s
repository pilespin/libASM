global _ft_strcat

_ft_strcat:
	push rbp
	mov rbp, rsp
	push rsi
	push rdi
	mov rdx, rdi
	jmp _start

_end:
	mov byte[rdi], 0
	mov rax, rdx
	pop rdi
	pop rsi
	mov rsp, rbp
	leave
	ret

_start:
	cmp byte[rdi], 0
	je _while
	inc rdi
	jmp _start

_while:
	cmp byte[rsi], 0
	jne _copy
	jmp _end
	jmp _end

_copy:
	mov r8, [rsi]
	mov [rdi], r8
	inc rdi
	inc rsi
	jmp _while
