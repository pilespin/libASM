global _ft_toupper

_ft_toupper:
	push rbp
	mov rbp, rsp

	cmp rdi, 97
	jl _is_not_alpha
	cmp rdi, 122
	jg _is_not_alpha
	jmp _is_alpha

_is_not_alpha:
	mov rax, rdi
	jmp _end

_is_alpha:
	sub rdi,32
	mov rax, rdi
	jmp _end

_end:
	mov rsp, rbp
	leave
	ret
