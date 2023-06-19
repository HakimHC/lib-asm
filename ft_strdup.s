extern malloc
extern ft_strlen

section .text
global ft_strdup

ft_strdup:
	push rdi
	call ft_strlen
	push rax
	mov rdi, rax
	inc rdi
	call malloc
	pop rcx
	pop rdi
	push rax
	call _loop
	pop rax
	ret

_loop:
	mov dl, [rdi]
	mov [rax], dl
	inc rax
	inc rdi
	dec rcx
	cmp rcx, 0
	jge _loop
	mov dl, 0
	mov [rax], dl
	ret
