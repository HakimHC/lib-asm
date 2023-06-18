section .text
global ft_strlen

ft_strlen:
	mov rax, 0
	mov cl, [rdi]
	cmp cl, 0
	jne loop
	ret

loop:
	inc rax
	inc rdi
	mov cl, [rdi]
	cmp cl, 0
	jne loop
	ret
