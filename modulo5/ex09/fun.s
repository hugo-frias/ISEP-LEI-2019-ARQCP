.section .data

.section .text

	.global fun1
	.global fun2
	.global fun3
	.global fun4
	.global fun5
		
		fun1:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl $0, %eax
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (StructB *s)
			movw (%ecx), %ax		#passa o primeiro parametro para eax
			
			
			end2:
						
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret


		fun2:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl $0, %eax			
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (structB *s)
			movw 28(%ecx), %ax		# acede ao short z

						
			
			
			
			
			#epilogue
			
			movl %ebp, %esp
			popl %ebp
			ret

		fun3:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl $0, %eax			
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (structB *s)
			addl $28, %ecx
			movl %ecx, %eax		# acede ao short z

						
			
			
			
			
			#epilogue
			
			movl %ebp, %esp
			popl %ebp
			ret

		fun4:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl $0, %eax			
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (structB *s)
			movl 8(%ecx), %edx		# acede ao pointer b
			movw (%edx), %ax		# acede ao short x

						
	
			
			
			
			
			#epilogue
			
			movl %ebp, %esp
			popl %ebp
			ret
			
		fun5:
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl $0, %eax
			movl 8(%ebp), %ecx
			movl 4(%ecx), %eax
			
				#epilogue
			
			movl %ebp, %esp
			popl %ebp
			ret
			
