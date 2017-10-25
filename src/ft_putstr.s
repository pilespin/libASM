%define MACH_SYSCALL(nb)	0x2000000 | nb

global _ft_putstr

_ft_putstr:
	push rbp
	mov rbp, rsp
	push rdi
	mov rsi, rdi
	mov rax, 0

_while:
	cmp byte[rdi + rax] , 0
	je _end
	inc rax
	jmp _while

_end:
	mov rdi, 1
	inc rax
	mov rdx, rax
	mov rax, MACH_SYSCALL(4)
	syscall
	mov rax, 10
	pop rdi
	mov rsp, rbp
	leave
	ret
