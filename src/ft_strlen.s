section .text
	global _ft_strlen

_ft_strlen:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je _back

	xor rax, rax
	mov rcx, -1
	cld
	repne scasb
	not rcx
	dec rcx

	mov rax, rcx
	mov rsp, rbp
	leave
	ret

_back:
	mov rax, 0
	mov rsp, rbp
	leave
	ret
