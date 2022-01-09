.section .data

.section .text
	.global count_bits_zero 
	
		count_bits_zero:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			pushl %ebx
			pushl %esi
						
			movl 8(%ebp), %ecx		# acede ao 1º parametro da função (x)
			movl $0, %eax			# limpa eax
			movl $32, %edx			# move 32 (quantidade de bits em 4 bytes) para edx
			movl $0, %esi			# limpa esi, o nosso contador

			count_bits_zero_loop:
			cmp %esi, %edx			# compara o contador com o fim
			je end					# salta para o fim caso afirmativo
			
			
			movl %ecx, %ebx			# move o valor de ecx para ebx
			AND $1, %ebx			# faz o and com o bit em ebx e 1
			cmp $0, %ebx			# caso o resultado seja 0, é porque o bit nao está ativo
			jne active_bit			# caso nao seja 0, nao vai incrementar o eax
			incl %eax				# incrementa eax
						
			active_bit:
			SHR %ecx				# move o ecx um bit para a direita
			incl %esi				# incrementa o contador externo
			jmp count_bits_zero_loop		# volta para o inicio do loop
			
			end:
						
			#epilogue
			popl %esi
			popl %ebx
			movl %ebp, %esp
			popl %ebp
			ret
