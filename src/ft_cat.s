%define SYSCALL(nb)		0x2000000 | nb
%define BUFFSIZE		63

global _ft_cat
extern _ft_putstr

section .data

	buffer times BUFFSIZE db 0
	bufsize equ $ - buffer

section .text

_ft_cat:

	push rbp
	mov rbp, rsp

read:
	push rdi

	lea rsi, [rel buffer]
	mov rdx, bufsize
	mov rax, SYSCALL(3)
	syscall

	cmp rax, 0
	je end

	lea rdi, [rel rsi]
	mov byte[rdi + rax], 0
	call _ft_putstr

	pop rdi
	jmp read

end:
	mov rsp, rbp
	leave
	ret
