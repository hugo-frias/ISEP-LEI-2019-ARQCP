.section .data
	.global ptrvec
	.global num;
	
.section .text
	.global keep_positives # void keep_positives(void)
	
	keep_positives:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl ptrvec,%ebx 		# move o address do ptrvec para ebx
		movl $0, %edx			# move zero para o contador edx
		
	keep_positives_loop_start:
		
		cmpl num, %edx 			# compara para ver se é o final do array
		jge end					# jump se acabar o array
		
		cmpl $0, (%ebx)			# compara o 0 com o valor do array
		jl	negative 			# jump se for negativo	
						
		addl $1, %edx			# adiciona 1 ao contador					
		addl $4, %ebx			# adiciona 4 ao ebx de modo a andar 1 posição no array de short ints
		jmp keep_positives_loop_start		# salta de volta para o inicio do loop	
	
	negative:
		movl %edx, (%ebx)
		addl $1, %edx		# adiciona 1 ao contador					
		addl $4, %ebx		# adiciona 2ao ebx de modo a andar 1 posição no array de short ints
		jmp keep_positives_loop_start		# salta de volta para o inicio do loop					
		
	end:
		
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
