section .text
global ft_strcmp

ft_strcmp:
	mov rbx, 0
	mov rcx, 0
	call _loop
	mov rax, 0
	movsx eax, bl
	ret

_loop:
	mov bl, [rdi]
	mov cl, [rsi]
	inc rdi
	inc rsi
	mov dl, bl
	and bl, cl
	cmp bl, 0
	mov bl, dl
	sub bl, cl
	jne _cmp
	ret

_cmp:
	cmp bl, 0
	je _loop
	ret
