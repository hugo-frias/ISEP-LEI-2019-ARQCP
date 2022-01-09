.section .data
	.global ptr1
	.global ptr2
	
.section .text
	.global str_copy_porto2 # void str_copy_porto2(void)
	
	str_copy_porto2:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		
		movl ptr1, %ebx
		movl ptr2, %eax
		movb $0, %cl

		
		str_copy_porto_loop_start:
		
		movb (%ebx), %dl		# move o valor do primeiro caracter para dl
		cmpb %dl, %cl			# compara dl com cl para ver se é o fim da string
		je end					# caso seja o fim da string, dá jump para o end
		
		
		
		
		
		cmpb $'v', %dl			# vê se o caracter é v
		je troca_caracter		# caso seja, dá jump para troca_caracter		
		
		cmpb $'V', %dl			# vê se o caracter é V
		je troca_caracter_caps	# caso sejam dá jump para troca_caracter_caps
		
		movb %dl, (%eax)		# caso não seja, simplesmente copia o valor
		incl %ebx				# incrementa ebx
		incl %eax				# incrementa eax
		jmp str_copy_porto_loop_start		#salta para o inicio do loop

		
		troca_caracter:
		movb $'b', (%eax)		#insere o caracter b
		incl %ebx				# incrementa ebx
		incl %eax				# incrementa eax
		jmp str_copy_porto_loop_start		#salta para o inicio do loop
		
		troca_caracter_caps:
		movb $'B', (%eax)		#insere o caracter B
		incl %ebx				# incrementa ebx
		incl %eax				# incrementa eax
		jmp str_copy_porto_loop_start		#salta para o inicio do loop
		
		end:
		movb $0, (%eax)			# fecha a string

		
		#epilogue
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
