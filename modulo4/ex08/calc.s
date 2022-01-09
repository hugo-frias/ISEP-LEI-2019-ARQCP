.section .data

.section .text
	.global calc 
	
		calc:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			subl $4, %esp
			pushl %ebx
			
						
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (a)
			movl 12(%ebp), %edx 	#acede ao 2º parametro da função (*b)
			movl 16(%ebp), %ebx		#acede ao 3º parametro da função (c)
			movl $0, %eax			# move 0 para eax

			
			movl (%edx), %eax		# move o valor em edx para eax
			subl %ecx, %eax			# subtrai ecx ao valor em eax ((*b)-a)
			movl %eax, -4(%ebp)		# guarda o resultado numa variavel auxiliar (z)
			
			
			movl -4(%ebp), %eax		# move o valor de z para eax
			imull %ebx, %eax		# multiplica o valor de ebx com eax (c*z)
			subl $2, %eax			# subtrai 2 ao resultado

			
			end:
						
			#epilogue
			popl %ebx
			addl $4, %esp
			
			movl %ebp, %esp
			popl %ebp
			ret
