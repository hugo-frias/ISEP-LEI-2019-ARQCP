.section .data
	.global ptr1
	
.section .text
	.global zero_count # int zero_count(void)
	
	zero_count:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		
		movl ptr1,%ebx 	# move o valor do address do vetor para ebx
		movb $0, %cl		 # move o valor do final de string para cl
		movl $0, %eax		# move o valor 0 para eax, o nosso contador de 0's
		
	zero_count_loop_start:
		
		movb (%ebx),%dl		# move o valor apontado por ebx para dl
		
		cmpb %cl,%dl		# verifica se o valor apontado é o fim da string
		je end				# salta para o fim caso positivo
		
		cmpb $'0',%dl		# compara o valor presente em dl com o valor 0
		je count
				
		addl $1, %ebx		# adiciona 1 ao address do vetor, de modo a ir para a posição seguinte
		jmp zero_count_loop_start		# salta para o inicio do loop
		
		
		count:
		
		addl $1, %eax		# adiciona 1 ao contador de 0's
		addl $1, %ebx		# adiciona 1 ao address do vetor, de modo a ir para a posição seguinte
		jmp zero_count_loop_start	# salta para o inicio do loop
		
		
		end:
		

		
		#epilogue
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
