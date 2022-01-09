.section .data

.section .text

	.global fill_s1
	
	fill_s1:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			pushl %edi
			pushl %esi
			
			movl $0, %eax
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (S1 *s)
			
			
			
			
			movl 12(%ebp), %eax			# passa vi para a um registo auxiliar
			movl 16(%ebp), %edx			# passa vc para a um registo auxiliar
			movl 20(%ebp), %esi			# passa vj para a um registo auxiliar
			movl 24(%ebp), %edi		    # passa vd para a um registo auxiliar
			
			
			
			movl %eax, (%ecx)	# passa vi para a estrutura
			movl %esi, 4(%ecx)	# passa vj para a estrutura
			movl %edx, 8(%ecx)	# passa vc para a estrutura
			movl %edi, 9(%ecx)  # passa vd para a estrutura
			
			
			
			end2:
			
			
			popl %esi
			popl %edi
				
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret


