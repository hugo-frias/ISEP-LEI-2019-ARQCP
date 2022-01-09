.section .data

.section .text
	.global test_equal 
	
		test_equal:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			pushl %ebx
			
						
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (*a)
			movl 12(%ebp), %edx 	#acede ao 2º parametro da função (*b)
			movl $0, %ebx			# move 0 para ebx
			movl $1, %eax			# move 1 para eax

			sum_smaller_loop:
			
			movb (%edx), %bh		# move o valor em edx para bh
			cmpb (%ecx), %bh		# compara o valor em ecx com bh
			jne end_not_equal		# salta caso nao sejam iguais
			
			cmpb $0, (%ecx)			# compara o valor em ecx com 0, para verificar se é o fim da string
			je end1					# caso sejam iguais, vai para o fim
			
			incl %ecx				# incrementa ecx
			incl %edx				# incrementa edx
			
			jmp sum_smaller_loop	# salta para o inicio do loop
			
			end_not_equal:	
			movl $0, %eax			# move 0 para eax
			jmp end					# salta para o fim
			
			
			end1:
			cmpb $0, %bh			# vê se o valor em bh também é 0, indicando que também é o fim da string
			je end					# salta para o fim
			movl $0, %eax			# move o valor 0 caso nao seja
			
			end:
						
			#epilogue
			popl %ebx
			movl %ebp, %esp
			popl %ebp
			ret
