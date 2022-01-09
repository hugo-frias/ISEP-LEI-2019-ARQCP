.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global compute # int compute(void)

	compute:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		
		movl A, %eax		# move A para eax
		movl B, %ecx       # move B para ebx
		
		imul %ecx, %eax		# eax = eax * ecx
		movl C, %ebx		# move C para ebx
		addl %ebx, %eax		# eax = eax + ebx
		
		movl D, %ecx		# move D para ecx
		cdq					# extende o sinal de eax para edx
		cmp $0, %ecx		# verifica se o divisor é zero
		je jmp_divisor0		# jump caso o divisor seja zero
		idivl %ecx			# divisão de edx:eax com ecx

		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

	jmp_divisor0:
		
		movl $0, %eax		# move 0 para ser retornado 0 porque a divisão não é possivel
		movl $0, %edx		# move 0 para ser retornado 0 porque a divisão não é possivel
		
	end:
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
