.section .data
	.global ptrvec
	.global num
	sum:
		.int 0
	avg:
		.int 0
	
.section .text
	.global vec_sum # int vec_sum(void)
	.global vec_avg # int vec_avg(void)
	
	vec_sum:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl ptrvec,%ebx 	# move o address do ptrvec para ebx
		movl num,%ecx		# move o valor de num para ecx
		movl $0, %edx 		# move o valor de 0 para edx, o nosso contador
		movl $0,%eax		# move zero para eax
		
	vec_sum_loop_start:
		
		cmpl %ecx,%edx		# compara o valor de ecx com o do contador
		je end				# salta para o fim caso sejam iguais
		
		addl (%ebx), %eax		# adiciona o valor apontado por ebx a eax
				
		addl $1, %edx		# adiciona 1 ao contador
		addl $4, %ebx		# adiciona 4 ao ebx de modo a andar 1 posição no array de inteiros
		jmp vec_sum_loop_start		# salta de volta para o inicio do loop	
	
	end:
		movl %eax, sum		# move a valor de eax para a variavel sum
		 
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
		
	vec_avg:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		call vec_sum		# chama a função vec_sum para fazer a soma do array
		movl num, %ecx		# move o valor de num para ecx
		cmp $0, %ecx		# compara o valor de ecx para saber se é divisor 0
		je end1				# jump se for zero
		cmp $0, %eax		# compara com 0 o valor da soma
		je end1				# jump se for zero
		
		cdq					# como não é zero e extendo o sinal de eax
		idivl %ecx			# divido com o numero de elementos do array
		movl %eax, avg		# move o valor de eax para avg
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

	end1:
		movl $0, avg	#move 0 para a average 
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
