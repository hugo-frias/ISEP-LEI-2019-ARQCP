.section .data

.section .text
.global join_bits 
.global mixed_sum
	
		join_bits:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			subl $4, %esp
			pushl %ebx
			pushl %esi
			pushl %edi
			
			movl 8(%ebp), %ebx		# acede ao 1º parametro da função (a)
			movl 12(%ebp), %edi		# acede ao 2º parametro da função (b)
			movl $0, %edx 			# limpa o contador
			movb $0, %cl			# limpa o cl
			movl $0, %eax			# move 0 para eax

			join_bits_loop1:

			cmpl 16(%ebp), %edx		# compara a posição com o contador
			jg join_bits_loop2		# caso seja maior, salta para o 2o loop
			
			movl $1, %esi			# move 1 para esi			
			SHL %cl, %esi			# faz o shift de 1 bit na posição cl
			movl %esi, -4(%ebp)		# move o resultado para uma variavel auxiliar
			and %ebx, %esi			# faz o and entre o resultado e 'a'
			
			cmp $0, %esi			# compara os bits
			jne not_active			# caso não sejam iguais, o bit nao está ativo e salta
			incl %edx				# incrementa o contador
			incb %cl				# incrementa o valor de cl
			jmp join_bits_loop1		# salta para o inicio do loop
			
			
			not_active:
			xor -4(%ebp), %eax		# caso contrário, faz o xor entre 1 e o número novo para ativar o bit
			incl %edx				# incrementa o contador
			incb %cl				# incrementa o valor de cl
			jmp join_bits_loop1		# salta para o inicio do loop
			
			
			join_bits_loop2:

			cmp $31, %edx			# compara o contador com 31
			jg end					# salta para o fim caso seja maior
			
			movl $1, %esi			# move 1 para esi			
			SHL %cl, %esi			# faz o shift de 1 bit na posição cl
			movl %esi, -4(%ebp)		# move o resultado para uma variavel auxiliar
			and %edi, %esi			# faz o and entre o resultado e 'b'
			
			cmp $0, %esi			# compara os bits
			jne not_active2			# salta caso o bit não esteja ativo

			incl %edx				# incrementa o contador
			incb %cl				# incrementa o valor de cl
			jmp join_bits_loop2		# volta ao inicio do loop
			
			not_active2:	
			xor -4(%ebp), %eax		# caso contrário, faz o xor entre 1 e o número novo para ativar o bit
			incl %edx				# incrementa o contador
			incb %cl				# incrementa o valor de cl
			jmp join_bits_loop2		# salta para o inicio do loop
			
			
			
			end:
			

			
						
			#epilogue
			
			popl %edi
			popl %esi
			popl %ebx
			addl $4, %esp
			
			movl %ebp, %esp
			popl %ebp
			ret



		mixed_sum:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			pushl %esi
			pushl %ebx
			

			
			
			movl 8(%ebp), %eax			# int a
			movl 12(%ebp), %ecx			# int b	
			movl 16(%ebp), %edx			# int pos
			movl $0, %esi				# limpa esi
			
			pushl %edx
			pushl %ecx
			pushl %eax
				
			call join_bits				# chama a função join bits
			
			movl %eax, %esi				# move o resultado para esi
			
			popl %eax
			popl %ecx
			popl %edx
			
			movl %eax, %ebx				# move o valor de 'a' para um registo auxiliar
			movl %ecx, %eax				# move o valor de 'b' para o registo de 'a'
			movl %ebx, %ecx				# move o valor de 'a' para o registo de 'b'
			
			pushl %edx
			pushl %ecx
			pushl %eax
			
			call join_bits				# chama a função agora com os valores trocados	
				
			addl %eax, %esi				# adiciona o resultado ao resultado anterior
			
			popl %eax
			popl %ecx
			popl %edx
			
			end2:
			movl %esi, %eax				# move o resultado final para eax
			
			#epilogue
			popl %ebx
			popl %esi

			movl %ebp, %esp
			popl %ebp
			ret
			
