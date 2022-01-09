.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global sum_and_subtract # long long sum_and_subtract(void)

	sum_and_subtract:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movsxb A, %eax      # eax = A
		movsxw B, %ebx      # ebx = B
		
		movl C, %ecx		# ecx = C
		movl D, %edx		# edx = D
		
		addl %ecx, %eax  	# eax = ecx + eax
		subl %edx, %eax		# eax = eax - edx
		addl %eax, %ebx		# ebx = ebx + eax
		
		movl %ebx, %eax		# mover o resultado para eax para retornar
		cdq      			# usamos o %eax para extender o resultado para ser apresentado em 64 bits
							# ou seja, edx:eax

		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
	ret
