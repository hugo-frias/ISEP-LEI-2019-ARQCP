.section .data
			
.section .text
	.global calculate 
	
		calculate:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			subl $8, %esp			# espaço para as variaveis locais
			
			movl $0,%eax			#limpa os registos eax, ecx e edx
			movl $0, %ecx	
			movl $0, %edx
			
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função a
			movl 12(%ebp), %eax		#acede ao 2º parametro da função b
				
			addl %ecx,%eax			# a+b =sum
			movl %eax, -4(%ebp)		# move sum para a stack para ser variavel local
			
			movl 12(%ebp), %eax		#acede ao 2º parametro da função b
			imull %ecx, %eax		# a*b
			movl %eax,-8(%ebp)		# move product para a stack para ser variavel local
			
			movl $'+', %edx			# move a operação + para edx
			pushl -4(%ebp)
			pushl 12(%ebp)
			pushl %ecx
			pushl %edx
			call print_result
			popl %edx
			popl %ecx
			popl 12(%ebp)
			popl -4(%ebp)
			
			
			movl $'*', %edx			# move a operação * para edx
			pushl -8(%ebp)
			pushl 12(%ebp)
			pushl %ecx
			pushl %edx
			call print_result
			popl %edx
			popl %ecx
			popl 12(%ebp)
			popl -8(%ebp)
			
			movl -4(%ebp), %eax		# move sum para eax
			subl -8(%ebp), %eax		# sum - product = eax
			
			addl $8, %esp			# volta a adionar 8 para tirar o espaço das variaveis locias
			
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret
