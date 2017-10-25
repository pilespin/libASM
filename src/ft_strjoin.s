global _ft_strjoin
extern _ft_strlen
extern _ft_strcat
extern _malloc

_ft_strjoin:
	push rbp
	mov rbp, rsp

	push rsi
	push rdi

	call _ft_strlen
	mov r8, rax
	pop rdi
	push rdi
	call _ft_strlen
	add r8, rax
	inc r8
	mov rdi, r8
	call _malloc
	pop rsi
	mov rdi, rax
	call _ft_strcat
	pop rsi
	mov rdi, rax
	call _ft_strcat

	mov rsp, rbp
	leave
	ret
