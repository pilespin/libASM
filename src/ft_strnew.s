global _ft_strnew
extern _malloc
extern _ft_bzero

_ft_strnew:
	push rbp
	mov rbp, rsp

	push rsi
	push rdi
	inc rdi
	call _malloc
	pop rdi
	mov rsi, rdi
	mov rdi, rax
	call _ft_bzero

	mov rsp, rbp
	leave
	ret
