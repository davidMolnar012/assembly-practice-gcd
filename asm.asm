.code
GCD_ASM proc ; a and b parameters are on rcx and rdx
	push rbx ; pushes rbx so we can use it 
	xor rax, rax ; nulls rax
	xor rbx, rbx ; nulls rbx


	cmp rdx, 0 ; compares rdx with 0 
	je Finished ; if compare was equal, then jumps to Finished
	cmp rcx, 0 ; compares rdx with 0 
	je Finished ; if compare was equal, then jumps to Finished

	mov rbx, rdx ; initialise rbx 

LoopHead: ; 
	xor rdx, rdx ; nulls rdx
	mov rax, rcx ; rax first number moves previus modulus to rax
	div rbx ; divide rax with rbx 
	mov rcx, rbx ; previus modulus to rcx
	mov rbx, rdx ; current modulus to rbx 

	cmp rbx, 0 ; compers current modulus to 0
	jne LoopHead ; jumps to loop first line if current modulus is not 0

Finished:
	
	mov rax, rcx
	pop rbx
	ret
GCD_ASM endp

end