global _ft_strclr

_ft_strclr:
    push rbp
	mov rbp, rsp

	mov rcx, 0
	cmp rdi, 0
	je _back
	jmp _while

_while:
	cmp byte[rdi + rcx], 0
	je _end
	mov byte[rdi + rcx], 0
	inc rcx
	jmp _while

_end:
	mov rsp, rbp
	leave
	ret

_back:
	mov rax, 0
	jmp _end
