global _ft_memcpy

_ft_memcpy:
	push rbp
	mov rbp, rsp

	cld
	mov rcx, rdx
	mov r8, rdi
	repne movsb
	mov rax, r8

	mov rsp, rbp
	leave
	ret
