global _ft_bzero

_ft_bzero:
    push rbp
	mov rbp, rsp

	mov rcx, 0
	jmp _while

_while:
	cmp rcx, rsi
	jl _delete
	mov rax, rdi
	mov rsp, rbp
	leave
	ret

_delete:
	mov byte[rdi + rcx], 0
	add rcx, 1
	jmp _while

