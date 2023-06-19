extern __errno_location

section .text
global ft_write

ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	jl error
	ret

error:
	neg rax
	push rax
	call __errno_location
	pop rbx
	mov [rax], rbx
	mov rax, -1
	ret
