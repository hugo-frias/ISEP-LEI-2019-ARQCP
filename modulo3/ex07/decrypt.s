.section .data
	.global ptr1
	
.section .text
	.global encrypt # int encrypt(void)
	
	encrypt:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl ptr1,%ebx 		# move o address do ptr1 para ebx
		movl $0,%eax		# move o valor de 0 para eax

		
	encrypt_loop_start:
		
		cmpb $0, (%ebx)		# compara para ver se é o final da string
		je end				# jump caso seja o final
		
		cmpb $'a', (%ebx)		# compara se é o caracter a
		je a_or_space			# salta caso seja a
		cmpb $' ', (%ebx)		# compara se é o caracter space
		je a_or_space			# salta caso seja space
		
		addl $2, (%ebx)			# encripta o caracter adicionando mais 2
						
		addl $1, %eax		# adiciona 1 ao contador
		addl $1, %ebx		# adiciona 1 ao ebx de modo a andar 1 posição no array de inteiros
		jmp encrypt_loop_start		# salta de volta para o inicio do loop	
	
	a_or_space:

		addl $1, %ebx		# adiciona 1 ao ebx de modo a andar 1 posição no array de chars
		jmp encrypt_loop_start		# salta de volta para o inicio do loop
		
		
	end:
			 
		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
		
	.global decrypt # int decrypt(void)
	
	decrypt:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl ptr1,%ebx 		# move o address do ptr1 para ebx
		movl $0,%eax		# move 0 para eax

		
	decrypt_loop_start:
		
		cmpb $0, (%ebx)		# compara para ver se é o final da string
		je end				# jump caso seja o final
		
		cmpb $'a', (%ebx)		# compara se é o caracter a
		je a_or_space1			# salta caso seja a
		cmpb $' ', (%ebx)		# compara se é o caracter space
		je a_or_space1			# salta caso seja space
		
		subl $2, (%ebx)		# subtrai dois para descodificar
						
		addl $1, %eax		# adiciona 1 ao contador
		addl $1, %ebx		# adiciona 1 ao ebx de modo a andar 1 posição no array de chars
		jmp decrypt_loop_start		# salta de volta para o inicio do loop	
	
	a_or_space1:

		addl $1, %ebx		# adiciona 1 ao ebx de modo a andar 1 posição no array de chars
		jmp decrypt_loop_start		# salta de volta para o inicio do loop
		
	
