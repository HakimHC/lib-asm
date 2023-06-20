section .text
global ft_list_push_front

ft_list_push_front:
	mov rbx, [rdi]
	cmp rbx, 0
	je _empty
	jne _push
	ret

_empty:
	mov [rdi], rsi
	ret

_push:
	mov rbx, [rdi]
	mov [rdi], rsi
	add rsi, 8
	mov [rsi], rbx
	ret
