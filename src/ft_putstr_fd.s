%define MACH_SYSCALL(nb)	0x2000000 | nb

global _ft_putstr_fd

_ft_putstr_fd:
	push rbp
	mov rbp, rsp

	push rdi
	push rsi
	cmp rsi, 0
	jl _back
	mov rsi, rdi
	mov rax, 0

_while:
	cmp byte[rdi + rax] , 0
	je _end
	inc rax
	jmp _while

_end:
	pop rdi
	inc rax
	mov rdx, rax
	mov rax, MACH_SYSCALL(4)
	syscall
	jmp _back

_back:
	mov rax, 10
	pop rdi
	mov rsp, rbp
	leave
	ret
