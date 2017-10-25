global _ft_streq

_ft_streq:
    push rbp
	mov rbp, rsp

	cmp rdi, 0
	je _end_zero
	cmp rsi, 0
	je _end_zero
	mov rcx, 0
	jmp _while

_while:
	cmp byte[rdi + rcx], 0
	je _end_zero
	cmp byte[rsi + rcx], 0
	je _end_zero
	mov r8, [rdi + rcx]
	mov r9, [rsi + rcx]
	cmp r9, r8
	jne _end_fail
	inc rcx
	jmp _while

_end_fail:
	mov rax, 0
	cmp r8, r9
	jg _end_sup
	cmp r8, r9
	jl _end_inf
	mov rax, 1
	mov rsp, rbp
	leave
	ret

_end_inf:
	inc rax
	mov rsp, rbp
	leave
	ret

_end_sup:
	inc rax
	mov rsp, rbp
	leave
	ret

_end_zero:
	mov rax, 0
	mov rsp, rbp
	leave
	ret
