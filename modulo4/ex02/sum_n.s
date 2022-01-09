.section .data

.section .text
	.global sum_n
	
	sum_n:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movl 8(%ebp), %ebx		# recebe o primeiro parâmetro (n)
		movl $1, %ecx			# mete 1 no ecx
		movl $0, %eax			# mete 0 no eax
		
		sum_n_loop:
		
		cmpl %ecx, %ebx			# compara o contador com o n
		je end1					# caso sejam iguais, salta para o fim 1
		jl end2					# caso o n seja menor que o contador, salta para o fim 2
		
		addl %ecx, %eax			# adiciona o ecx ao eax
		
		incl %ecx				# incrementa o ecx
		jmp sum_n_loop			# salta para o inicio do loop

		
		end1:
		addl %ecx, %eax			# adiciona o ecx ao eax
		jmp end					# salta para o fim
		
		end2:	
		movl $0, %eax			# move 0 para eax
		jmp end					# salta para o fim
		
		end:
		#epilogue

		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
		

