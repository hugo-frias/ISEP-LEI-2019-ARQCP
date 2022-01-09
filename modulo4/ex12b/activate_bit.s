.section .data

.section .text
	.global activate_bit 
	
		activate_bit:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			
			pushl %ebx
						
			
			movl 8(%ebp), %ebx		# acede ao 1º parametro da função (*ptr)
			movb 12(%ebp), %cl		# acede ao 2º parametro da função (pos)
			movl $1, %eax			# move 1 para eax

			movl (%ebx), %edx		# move o conteudo em ebx para edx	
			SHL %cl, %eax			# faz o shift de 1 bit na posição
			
			and %eax, %edx			# faz o and entre eax e edx
			cmp %eax, %edx			# compara os dois
			je active				# caso sejam iguais, o bit está ativo
			xor %eax, (%ebx)		# caso nao sejam iguais, vai-se fazer o xor entre eax e ebx para ativar o bit
			movl $1, %eax			# move-se 1 para eax
			jmp end					# salta para o fim
	
			
			
			active:
			movl $0, %eax			# move-se 0 para eax
			
			
			end:
			
			
						
			#epilogue
			popl %ebx
			
			movl %ebp, %esp
			popl %ebp
			ret
