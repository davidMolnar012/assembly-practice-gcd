.code
GCD_ASM proc

	cmp rcx, 0
	jbe Finished 
	cmp rdx, 0
	jbe Finished


Loophead:
	mov rax, rcx
	mov rcx, rdx
	xor rdx,rdx
	div rcx

	cmp rdx, 0
	jne Loophead

	mov rax, rcx

Finished:
	ret

GCD_ASM endp
end