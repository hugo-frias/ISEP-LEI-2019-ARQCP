.section .data
	.global code
	.global currentSalary
	CODE_10:
		.int 10
	CODE_11:
		.int 11
	CODE_12:
		.int 12
	
	
.section .text
	.global new_salary # int new_salary(void)

	new_salary:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl code, %eax				# move code para eax
		movl currentSalary, %ecx	# move currentSalary para ecx
		
		cmp CODE_10, %eax			# compara o code com 10
		je code10jmp				# jump caso o code seja igual a 10
		
		cmp CODE_11, %eax			# compara o code com 11		
		je code11jmp				# jump caso o code seja igual a 11
		
		cmp CODE_12, %eax			# compara o code com 12		
		je code12jmp				# jump caso o code seja igual a 12
		
		movl $100, %ebx				# caso o codigo seja diferente de todos move 100 para ebx
		addl %ebx, %ecx				# ecx = ecx + ebx
		jmp end 

	code10jmp:
	
		addl $300, %ecx				# adiciona 300 ao ecx
		jmp end
	
	code11jmp:
		movl $250, %ebx				# move 250 para ebx
		addl %ebx, %ecx				# adiciona ebx ao ecx
		jmp end
	
	code12jmp:
		movl $150, %ebx				# move 150 para ebx
		addl %ebx, %ecx				# adiciona ebx ao ecx
	
	end:
		movl %ecx , %eax			# move o ecx para eax para retornar eax
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
