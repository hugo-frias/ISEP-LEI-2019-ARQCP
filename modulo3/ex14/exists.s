.section .data
	.global x
	.global num
	.global ptrvec

	
.section .text
	.global exists # int exists(void)
	.global vec_diff # int vec_diff(void)
		
	exists:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		
		movl ptrvec, %ecx		# passa o address para ecx
		movl $0, %edx			# inicia o contador
		movw x, %bx				# move o valor a verificar para bx
		movl $0, %eax			# por predifinição, X não tem duplos
		
		exists_loop:
		cmp num, %edx			# compara o numero de elementos do vetor com o contador
		je end					# salta para o fim caso seja igual
		
		cmp %edx, %edi			# compara o contador exists com a posição do proprio numero
		je proprio				# salta caso sejam iguais
		
		cmpw %bx, (%ecx)		# compara o valor de x com o valor em ecx
		je found				# salta para found caso seja igual
		
		addl $2, %ecx			# "anda para a frente" no vetor
		incl %edx				# incrementa o contador
		jmp exists_loop			# volta para o inicio do loop
		
		found:
		movl $1, %eax			# move 1 para eax
		jmp end					# salta para o fim
		
		proprio:
		
		addl $2, %ecx			# anda para a frente no vetor
		incl %edx				# incrementa o contador		
		jmp exists_loop			# volta para o inicio do loop
	
		end:
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

		
	vec_diff:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		pushl %edi
		

		movl $0, %ecx			# move 0 para ecx
		movl ptrvec, %esi		# move o address do vetor para esi
		movl $0, %edi			# move 0 para edi, o contador
		
		vec_diff_loop:
		
		cmp %edi, num			# compara o contador com o numero de elementos do array
		je end2					# salta para o fim caso sejam iguais
		movw (%esi), %dx		# move o valor em esi para dx
		movw %dx, x				# move o valor em dx para a variavel x
		
		
		pushl %edx
		pushl %ecx
		call exists				# chama a função exists
		popl %ecx
		popl %edx
		
		cmpl $0, %eax			# compara eax com 0
		je unico				# faz o jump caso sejam iguais, indicando que é um valor único
		
		addl $2, %esi			# caso não seja, adiciona 2 a esi para andar no vetor
		incl %edi				# incrementa o contador
		jmp vec_diff_loop		# salta para o inicio do loop
		
		unico:
		addl $1, %ecx			# adiciona 1 ao contador de números unicos encontradas
		addl $2, %esi			# adiciona 2 a esi para andar no vetor
		incl %edi				# incrementa o contador
		jmp vec_diff_loop		# salta para o inicio do loop
	
		end2:
		movl %ecx, %eax			# passa o contador de números unicos encontrados para o registo de retorno
		
		#epilogue
		popl %edi
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
