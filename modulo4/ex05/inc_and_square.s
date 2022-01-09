.section .data

.section .text
	.global inc_and_square 
	
		inc_and_square:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl $0,%eax			#limpa os registos eax, ecx e edx
			movl $0, %ecx	
			movl $0, %edx
						
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função 
			movl 12(%ebp), %eax		#acede ao 2º parametro da função 
			movl %eax, %edx

			incl (%ecx)				# incrementa o valor de v1
			imull %edx, %eax		# v2 * v2 
						
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret
