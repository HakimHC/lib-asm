section .text
global ft_list_size

ft_list_size:
	mov rax, 0
	cmp rdi, 0
	mov rcx, 0
	jnz _loop
	ret

_loop:
	add rdi, 8
	mov rax, [rdi]
	inc rcx
	cmp rax, 0
	jne _aux
	mov rax, rcx
	ret

_aux:
	mov rdi, rax
	call _loop
	mov rax, rcx
	ret
