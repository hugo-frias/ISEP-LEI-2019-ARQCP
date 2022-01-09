.section .data
	.global ptrvec
	.global num;
	
.section .text
	.global sum_first_byte # int sum_first_byte(void)
	
	sum_first_byte:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		pushl %edi
		
		movl ptrvec,%esi 		# move o address do ptrvec para ebx
		movl num, %edx			# move zero para o contador edx
		movl $0, %eax
		movl $0, %ecx
		
	sum_first_byte_loop_start:
		
		cmpl $0, %edx 		# compara para ver se é o final do array
		je end		# jump se acabar o array
		
		decl %edx				# decrementa um valor ao numero de elementos ate chegar a zero	
		movl (%esi), %ebx		# move o apontado de esi para ebx
		movsxb %bl, %edi		# extende e move o primeiro byte de ebx ou seja bl para edi
		addl %edi, %eax			# adiciona o byte do valor do array a soma completa
		
		
					
		addl $4, %esi		# adiciona 4 ao ebx de modo a andar 1 posição no array de short ints
		jmp sum_first_byte_loop_start		# salta de volta para o inicio do loop	
	
				
	empty_array:
		movl $0, %eax		#garante que retorna zero quando o array esta vazio
		jmp end
		
	end:
		
		#epilogue
		popl %edi
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
