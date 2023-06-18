section .text
global ft_strcpy

ft_strcpy:
	push rdi
	call _loop
	pop rax
	ret

_loop:
	mov bl, [rsi]
	mov [rdi], bl
	inc rsi
	inc rdi
	cmp bl, 0
	jne _loop
	mov rax, 0
	ret
