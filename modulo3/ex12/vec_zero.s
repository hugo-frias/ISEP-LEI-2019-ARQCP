.section .data
	.global ptrvec
	.global num

	
.section .text
	.global vec_zero # int vec_zero(void)


	vec_zero:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %edi
		
		movl ptrvec, %ebx 	# move ptrvec para ebx
		movl num, %ecx		# move num para ebx
		movl $0, %eax		# limpa o eax
		movl $0, %edi		# inicia o contador
		
		vec_zero_loop:
		
		cmp %edi, %ecx		# compara o valor do contador com o tamanho do array
		je end				# passa para o fim caso seja igual
		
		movw (%ebx), %dx	# move o conteudo de ebx para dx
		cmpw $100, %dx		# compara o conteudo em edx com 100
		jge greater_100		# caso seja maior ou igual, salta para greater_100
		
		addl $2, %ebx		# adiciona 2 a ebx, para avançar no array
		incl %edi			# incrementa o contador
		jmp vec_zero_loop	# faz o jump para o inicio do loop
		
		greater_100:
		
		movw $0, (%ebx)		# move 0 para a posição no array
		incl %eax			# incrementa o contador de valores de eax
		
		addl $2, %ebx		# adiciona 2 a ebx, para avançar no array
		incl %edi			# incrementa o contador
		jmp vec_zero_loop	# faz o jump para o inicio do loop
		
		end:

		
		#epilogue
		popl %edi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
