global _ft_isdigit

_ft_isdigit:
	push rbp
	mov rbp, rsp
	cmp rdi, 48
	jl _is_not_alpha
	cmp rdi, 57
	jg _is_not_alpha
	jmp _is_alpha

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
