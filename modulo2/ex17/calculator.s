.section .data
	.global A
	.global B
	.global valor
	valor: 
	.int 0

.section .text

	.global sum # int sum(void);
	.global subtraction # int subtraction(void);
	.global multiplication # int multiplication(void);
	.global division # int division(void);
	.global modulus # int modulus(void);
	.global powers2 # int powers2(void);
	.global powers3 # int powers3(void);

	sum:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl A, %eax		# move A para eax
		movl B, %ebx		# move B para ebx
		addl %ebx, %eax		# eax = eax + ebx
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
	ret

	subtraction:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl A, %eax		# move A para eax
		movl B, %ebx		# move B para ebx
		subl %ebx, %eax		# eax = eax - ebx
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
	ret
	
	multiplication:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl A, %eax		# move A para eax
		movl B, %ecx		# move B para ecx
		imul %ecx, %eax		# eax = eax * ecx
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
	ret

	division:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl A, %eax		# move A para eax
		movl B, %ecx		# move B para ecx
		cdq					# extende o sinal de A para edx
		
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
		jmp end
		
	end:
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
	
	modulus:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl A, %eax		# move A para eax
		cdq					# extende o sinal de A para edx
		cmp $0, %edx		# compara o edx para saber se A é positivo ou negativo
		jl negativo			# jump caso seja negativo
		jmp end1
		
	negativo:

		movl $-1, %ebx		# move -1 para ebx
		imul %ebx, %eax		# multiplica -1 por eax para retornar o modulo de eax
		jmp end1
		 
	end1:
		movl %eax, valor	# move eax para a variavel valor
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
	ret
	
	powers2:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl A, %eax		# move A para eax
		movl A, %ecx		# move A para ecx
		imul %ecx, %eax		# multiplica A por A (ou seja A^2)
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
	ret
	
	powers3:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl A, %eax		# move A para eax
		movl A, %ecx		# move A para ecx
		imul %ecx, %eax		# multiplica A por A
		imul %ecx, %eax		# multiplica A^2 por A (ou seja A^3)
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
	ret
