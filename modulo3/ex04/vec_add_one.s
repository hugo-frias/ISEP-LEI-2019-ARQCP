.section .data
	.global ptrvec
	.global num

	
.section .text
	.global vec_add_one # void vec_add_one(void)
	
	vec_add_one:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		
		movl ptrvec,%ebx 	# move o address do ptrvec para ebx
		movl num,%ecx		# move o valor de num (tamanho vector) para ecx
		movl $0, %edx 		# move o valor de 0 para edx, o nosso contador
		

		
	vec_add_one_loop_start:
		
		cmp %ecx,%edx		# compara o valor de ecx com o do contador
		je end				# salta para o fim caso sejam iguais
		
		addl $1, (%ebx)		# adiciona 1 ao valor apontado por ebx
				
		addl $1, %edx		# adiciona 1 ao contador
		addl $4, %ebx		# adiciona 4 ao ebx de modo a andar 1 posição no array de inteiros
		jmp vec_add_one_loop_start		# salta de volta para o inicio do loop
		
		
		end:

		
		#epilogue
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
