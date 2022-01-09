.section .data

.section .text

	.global fill_s2
		#(s2 *s, short vw[3], int vj, char vc[3])
		fill_s1:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			pushl %edi
			pushl %esi
			
			movl $0, %eax
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (S1 *s)
			
			movl 12(%ebp), %eax			# passa vw[0] para a um registo auxiliar
			movl 16(%ebp), %edx			# passa vw[1] para a um registo auxiliar
			movl 20(%ebp), %esi			# passa vw[2] para a um registo auxiliar
			movl 24(%ebp), %edi		    # passa vd para a um registo auxiliar
			
			
			
			movl %eax, (%ecx)	# passa vw[0] para a estrutura
			movl %edx, 4(%ecx)	# passa vw[1] para a estrutura
			movl %esi, 8(%ecx)	# passa vw[2] para a estrutura
			movl %edi, 12(%ecx) # passa vd para a estrutura
			
			
			
			end2:
			popl %esi
			popl %edi
				
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret

		fill_vec:
			
			cmpl %edi, $3
			je end
			
			
			movl 
			leal 
