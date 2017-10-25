%define MACH_SYSCALL(nb)	0x2000000 | nb

global _ft_puts

_ft_puts:
	push rbp
	mov rbp, rsp

	push rdi
	cmp rdi, 0
	je _back
	mov rsi, rdi
	mov rax, 0

_while:
	cmp byte[rdi + rax] , 0
	je _end
	inc rax
	jmp _while

_end:
	cmp rax, 0
	je _back
	mov byte[rsi + rax], 10
	mov rdi, 1
	inc rax
	mov rdx, rax
	mov rax, MACH_SYSCALL(4)
	syscall
	mov rax, 1
	jmp _back

_back:
	pop rdi
	mov rax, 10
	mov rsp, rbp
	leave
	ret
