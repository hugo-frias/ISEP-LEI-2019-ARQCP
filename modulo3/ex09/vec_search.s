.section .data
	.global ptrvec
	.global x;
	.global num;
	
.section .text
	.global vec_search # short* vec_search(void)
	
	vec_search:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl ptrvec,%ebx 		# move o address do ptrvec para ebx
		movl $0, %edx			# move zero para o contador edx
		movw x,%cx				# move o x a procurar para cx
		movl $0, %eax			# assume se que a função nao vai encontrar nenhum numero
		
	vec_search_loop_start:
		
		cmpl num, %edx 		# compara para ver se é o final do array
		jge end				# jump se acabar o array
		
		cmpw %cx, (%ebx)	# compara o x com o valor do array
		je occurence		# jump se for igual
								
		addl $1, %edx		# adiciona 1 ao contador					
		addl $2, %ebx		# adiciona 2ao ebx de modo a andar 1 posição no array de short ints
		jmp vec_search_loop_start		# salta de volta para o inicio do loop	
	
	occurence:
		
		movl %ebx, %eax		# move o adress do valor do array que é igual a x para eax 
		jmp end				
		
	end:
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
