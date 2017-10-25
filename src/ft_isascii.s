global _ft_isascii

_ft_isascii:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	jl _is_not_alpha
	cmp rdi, 127
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
