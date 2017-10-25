global _ft_tolower

_ft_tolower:
	push rbp
	mov rbp, rsp

	cmp rdi, 65
	jl _is_not_alpha
	cmp rdi, 90
	jg _is_not_alpha
	jmp _is_alpha

_is_not_alpha:
	mov rax, rdi
	jmp _end

_is_alpha:
	add rdi, 32
	mov rax, rdi
	jmp _end

_end:
	mov rsp, rbp
	leave
	ret
