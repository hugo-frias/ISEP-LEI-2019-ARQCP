.section .data

.section .text

	.global count_even

		count_even:

			#prologue
			pushl %ebp
			movl %esp, %ebp

			pushl %edi
			pushl %esi
			pushl %ebx

			movl 8(%ebp), %esi		# move o primeiro parametro da função para esi
			movl $0, %ecx			# limpar registos
			movl $0, %edi
			movl $0, %edx
			movw $2, %bx			# move 2 para bx para ser o divisor

		loop:
		
			cmpl %ecx, 12(%ebp)		# compara para ver se é o final da função
			je end
			movw (%esi), %ax		# move o valor de esi para ax
			idivw %bx				# faz a divisão
			cmpw $0, %dx			# verifica se o resto é zero e se for vai incrementar
			je increment

		ract:
		
			addl $2, %esi			# avança a posição do vetor
			incl %ecx				# incrementa o valor da posição
			movl $0, %edx			# movl $0 para o edx que era o resto da função
			jmp loop

		increment:
		
			incl %edi				# incrementa o contador de numeros pares
			jmp ract

		end:
		
			movl %edi, %eax 		# move o contador para eax para retornar

			popl %ebx
			popl %esi
			popl %edi

			#epilogue
			movl %ebp, %esp
			popl %ebp


			ret
