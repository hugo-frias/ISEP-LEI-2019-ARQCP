.section .data
	.global num
	.global ptrvec

	
.section .text
	.global array_sort # void array_sort(void)
	.global swap # void swap(void)
	
	
		array_sort:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		pushl %edi
		
		movl num, %esi			# move o número de elementos do array para esi
		subl $1, %esi			# subtrai 1 a esi (para ajudar no ciclo e obtermos num-1)
		movl $0, %edi			# contador externo

		
		sort_outside_loop:
		movl ptrvec, %eax		# pointer outside loop
		movl ptrvec, %ebx		# pointer inside loop
		addl $4, %ebx			# adiciona 4 a ebx para estar " uma posição á frente"
		movl $0, %edx			# move o valor 0 para edx, o contador interno
		cmp num, %edi			# compara num com contador externo
		je end					# salta caso fim		
		incl %edi				# aumenta o contador

		sort_inside_loop:
		cmp %esi, %edx			# compara num-1 com o contador interno
		je sort_outside_loop	# passa para o outro loop caso o contador tenha atingido num
		
		movl (%eax), %ecx		# move o valor de eax para ecx
		
		cmp (%ebx), %ecx  		# compara o valor de ebx com ecx
		jb swap_i				# caso seja menor, dá swap
		
		addl $4, %eax			# percorre o vetor apontado por eax
		addl $4, %ebx			# percorre o vetor apontado por ebx
		incl %edx				# incrementa o contador
		jmp sort_inside_loop	# salta para o inicio do loop
		
		
		
		swap_i:
		
		pushl %edx				
		pushl %ecx
		call swap				# chama a função swap
		popl %ecx
		popl %edx
		
		addl $4, %eax			# percorre o vetor apontado por eax
		addl $4, %ebx 			# percorre o vetor apontado por ebx
		incl %edx				# incrementa o contador
		jmp sort_inside_loop	# salta para o inicio do loop
		
		
		end:
		
		#epilogue
		popl %edi
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
		
		
		
		
		swap:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		
		
		movl (%ebx), %edx		# passa o valor de ebx para um registo auxiliar
		movl (%eax), %ecx		# passa o valor de eax para um registo auxiliar
		
		movl %edx, (%eax)		# passa o valor em edx para eax
		movl %ecx, (%ebx)		# passa o valor em ecx para ebx
		
		#epilogue

		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
		
