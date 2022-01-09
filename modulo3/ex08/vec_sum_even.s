.section .data
	.global ptrvec
	.global num
	.global even

	
.section .text
	.global vec_sum_even # int vec_sum_even(void)
	.global test_even # int test_even(void)
		
	test_even:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		
		movl even, %eax			# move o valor a verificar para eax
		movl $0, %edx			# move 0 para edx
		movl $2, %ecx			# move 2 para ecx
		divl %ecx				# divide o valor a verificar por ecx (even/2)
		
		cmpl $0, %edx			# compara o valor do resto com 0
		je its_even				# faz o jump se for 0
		
		movl $0, %eax			# move o valor 0 para eax
		jmp end					# salta para o fim
		
		its_even:	
	
		movl $1, %eax			# move o valor 1 para eax
		
	
		end:
	
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

		
	vec_sum_even:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %edi
		pushl %esi
		

		movl $0, %esi			# move o valor 0 para esi, o nosso "total"
		movl $0, %edx			# move 0 para edx, o nosso contador
		movl ptrvec, %edi		# move o valor do address do vetor para edi	
		
		vec_sum_even_loop:
		
		cmp num, %edx			# compara o contador com o num de elementos, para saber se já percorreu o array
		je end2					# passa para o fim caso sejam iguais
			
		movl (%edi), %ecx		# move o valor presente em edi para ecx
		movl %ecx, even			# move o valor de ecx para a variavel even

		pushl %ecx
		pushl %edx
		call test_even			# chama a função test even	
		popl %edx
		popl %ecx
	
			
		cmpl $1, %eax			# compara o valor recebido com 1
		je sum_even				# caso seja igual, salta para jump even
		
		addl $4, %edi			# adiciona 4 a edi, para percorrer o vetor
		incl %edx				# incrementa edx
		jmp vec_sum_even_loop	# salta para o inicio do loop
			
			
		sum_even:
		
		addl %ecx, %esi			# adiciona o valor em ecx a esi
		addl $4, %edi			# adiciona 4 a edi para percorrer o vetor
		incl %edx				# incrementa edx
		jmp vec_sum_even_loop	# salta para o inicio do loop
	
		
		
	
		end2:
		movl %esi, %eax			# mete o resultado em eax, para retornar o valor
		
		#epilogue
		popl %esi
		popl %edi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
