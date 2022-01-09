.section .data
	.global num
	.global ptrsrc
	.global ptrdest
valor:
	.int 0
nums_inseridos:
	.int 0


	
.section .text
	.global sort_without_reps # int sort_without_reps(void)
	.global has_rep # int has_rep(void)
	.global array_sort # void array_sort(void)
	.global swap # void swap(void)
	
	has_rep:
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %edi
		pushl %esi
		
		movl nums_inseridos, %esi
		movl valor, %ebx
		movl ptrdest, %edx		# inicia o contador			
		movl $0, %edi	
		movl $0, %eax		
		
		has_rep_loop:
		cmp %esi, %edi			# compara o numero de elementos do vetor com o contador
		je end2					# salta para o fim caso seja igual
		
		cmp %ebx, (%edx)
		je found
		
		addl $4, %edx
		incl %edi
		jmp has_rep_loop
		
		found:
		movl $1, %eax
		jmp end2
		
		end2:
		
		#epilogue
		popl %esi
		pushl %edi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

		
		
	sort_without_reps:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		pushl %edi

		
		movl ptrsrc, %ecx		# passa o address source para ecx
		movl ptrdest, %edx		# passa o address destino para edx		
		movl $0, %edi			# inicia o contador
		movl $0, %esi			# inicia o contador de numeros no vetor destino
		movl %esi, nums_inseridos
		
		sort_without_reps_loop:
		cmp num, %edi			# compara o numero de elementos do vetor com o contador
		je end					# salta para o sort caso seja igual
		
		movl (%ecx), %ebx		# copia o número em ecx para ebx	
		movl %ebx, valor
		
		pushl %esi
		pushl %ebx
		pushl %edi
		pushl %edx
		call has_rep			# vê se o número em questão já existe no vetor destino
		popl %edx
		popl %edi
		popl %ebx
		popl %esi
		
		cmp $1, %eax			# compara o valor de retorno da função anterior com 1, para ver se é repetido ou não
		je incrementador		# salta para o incrementador caso seja repetido
		
		
		movl %ebx, (%edx)		# move o número para o novo vetor
		addl $4, %ecx			# anda no vetor source
		addl $4, %edx			# anda no vetor destino
		incl %edi				# incrementa o contador
		incl %esi			    # incrementa o contador de números do vetor destino
		movl %esi, nums_inseridos
		jmp sort_without_reps_loop
		
		incrementador:

		addl $4, %ecx			# anda no vetor source
		incl %edi				# incrementa o contador
		jmp sort_without_reps_loop
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		end:
		
		call array_sort
		
		
		
		
		#epilogue				

		popl %edi
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

		
		array_sort:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		pushl %edi
		
		movl nums_inseridos, %esi	# move o número de elementos do array para esi
		subl $1, %esi				# subtrai 1 a esi (para ajudar no ciclo e obtermos num-1)
		movl $0, %edi				# contador externo

		
		sort_outside_loop:
		movl ptrdest, %eax			# pointer outside loop
		movl ptrdest, %ebx			# pointer inside loop
		
		addl $4, %ebx				# adiciona 4 a ebx para estar " uma posição á frente"
		movl $0, %edx				# move o valor 0 para edx, o contador interno
		
		cmp nums_inseridos, %edi	# compara num com contador externo
		je end3						# salta caso fim		

		incl %edi					# aumenta o contador

		
				
		
		sort_inside_loop:
		cmp %esi, %edx			# compara num-1 com o contador interno
		je sort_outside_loop	# passa para o outro loop caso o contador tenha atingido num
		
		movl (%eax), %ecx		# move o valor de eax para ecx
		
		cmp (%ebx), %ecx  		# compara o valor de ebx com ecx
		jg swap_i				# caso seja menor, dá swap
		
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
		
		end3:
		movl nums_inseridos, %eax	# passa o numero de nums inseridos para o registo de retorno
		
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
		

