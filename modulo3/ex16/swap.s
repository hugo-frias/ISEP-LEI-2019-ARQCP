.section .data
	.global num
	.global ptr1
	.global ptr2

	
.section .text
	.global swap # void swap(void)
		
	swap:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %edi
		pushl %esi		
		
		movl ptr1, %ecx			# move o address de ptr1 para ecx
		movl ptr2, %edx			# move o address de ptr2 para edx
		movl num, %esi			# move o número de elementos no vetor para esi
		movl $0, %edi			# move 0 para edi, o contador
		
		swap_loop:
		
		cmp %esi, %edi			# verifica se o ciclo chegou ao fim, comparando o contador com o num de elementos
		je end					# caso afirmativo, salta para o fim
		
		movb (%ecx), %ah		# move o valor em ecx para o registo ah
		movb (%edx), %bh		# move o valor em edx para o registo bh
		movb %ah, (%edx)		# move o valor em ah para o registo edx
		movb %bh, (%ecx)		# move o valor em bh para o registo ecx
		
		incl %ecx				# incrementa ecx
		incl %edx				# incrementa edx
		incl %edi				# incrementa edi
		
		jmp swap_loop			# salta para o inicio do loop
	
		end:
		
		#epilogue
		popl %esi
		popl %edi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

		
	
