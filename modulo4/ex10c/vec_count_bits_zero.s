.section .data

.section .text

	.global count_bits_zero 
	.global vec_count_bits_zero
		
		count_bits_zero:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			pushl %ebx
			pushl %esi
						
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função 
			movl $0, %eax			# limpa eax
			movl $32, %edx			# move 32 (quantidade de bits em 4 bytes) para edx
			movl $0, %esi			# limpa esi, o nosso contador

			count_bits_zero_loop:
			cmp %esi, %edx			# compara o contador com o fim
			je end2					# salta para o fim caso afirmativo
			
			
			movl %ecx, %ebx			# move o valor de ecx para ebx
			AND $1, %ebx			# faz o and com o bit em ebx e 1
			cmp $0, %ebx			# caso o resultado seja 0, é porque o bit nao está ativo
			jne active_bit			# caso nao seja 0, nao vai incrementar o eax
			incl %eax				# incrementa eax
						
			active_bit:
			SHR %ecx				# move o ecx um bit para a direita
			incl %esi				# incrementa o contador externo
			jmp count_bits_zero_loop		# volta para o inicio do loop
			
			end2:
						
			#epilogue
			popl %esi
			popl %ebx
			movl %ebp, %esp
			popl %ebp
			ret


		vec_count_bits_zero:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			pushl %ebx
			pushl %esi
			pushl %edi
						
			movl 8(%ebp), %ecx		# acede ao 1º parametro da função (*ptr)
			movl 12(%ebp), %edi     # acede ao 2º parametro da função (num)
			
			movl $0, %eax			# limpa eax
			movl $0, %ebx			# limpa ebx
			movl $0, %esi			# limpa esi, o nosso contador

			vec_count_bits_zero_loop:
			cmp %esi, %edi			# compara o contador com o fim
			je end					# salta para o fim caso afirmativo
			
			movl (%ecx), %edx		# move o valor em ecx para edx
			
			
			pushl %eax
			pushl %ecx
			pushl %edx
			
			call count_bits_zero	# chama a função count_bits_zero
			addl %eax, %ebx			# adiciona o resultado da função chamada a ebx
			
			popl %edx
			popl %ecx
			popl %eax
			
			
			
			incl %esi				# incrementa o contador
			addl $4, %ecx			# "anda para a frente" no vetor
			jmp vec_count_bits_zero_loop	# faz o jump para o inicio do loop
			
			
			end:
			movl %ebx, %eax			# move o resultado para eax
			
			#epilogue
			popl %edi
			popl %esi
			popl %ebx
			
			movl %ebp, %esp
			popl %ebp
			ret


		
