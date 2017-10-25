global _ft_isalpha

_ft_isalpha:
	push rbp
	mov rbp, rsp
	cmp rdi, 65
	jl _is_not_alpha
	cmp rdi, 122
	jg _is_not_alpha
	cmp rdi, 91
	jl _is_alpha
	cmp rdi, 96
	jg _is_alpha

_is_not_alpha:
	mov rax, 0
	jmp _end

_is_alpha:
	mov rax, 1
	jmp _end

_end:
	mov rsp, rbp
	leave
	ret
