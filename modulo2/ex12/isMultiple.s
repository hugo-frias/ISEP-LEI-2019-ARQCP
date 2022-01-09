.section .data
	.global A
	.global B
	
.section .text
	.global isMultiple # int isMultiple(void)

	isMultiple:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		
		movl A, %eax		# eax = a
		movl B, %ecx       # ecx = b

		cdq			# estende o sinal de eax para edx
		cmp $0, %ecx		# compara o ecx com zero para saber se é divisor 0
		je jmp_divisor0		# jump caso o divisor seja 0
		divl %ecx			# divisao de edx:eax com ecx
		
		cmp $0, %edx		# compara o resultado (edx) com 0 para saber se é multiplo ou nao
		je jmp_Multiplo		# jump caso seja multiplo ou seja =0
		jg jmp_NaoMultiplo	# jump caso nao seja multiplo 
		
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
	ret

	jmp_Multiplo:
		movl $1, %eax	# move 1 para eax para retornar 1
		jmp end
	
	jmp_NaoMultiplo:
		movl $0, %eax	# move 0 para eax para retornar 0
		jmp end

	jmp_divisor0:
		
		movl $0, %eax	# passa o eax para 0 porque a divisa nao é possivel
		movl $0, %edx	# passa o edx para 0 porque a divisao nao é possivel
		
	end:
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
