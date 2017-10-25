global _ft_memset

_ft_memset:
	push rbp
	mov rbp, rsp

	cld
	mov rax, rsi
	mov rcx, rdx
	mov rdx, rdi
	rep stosb

	mov rax, rdx
	mov rsp, rbp
	leave
	ret
