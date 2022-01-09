.section .data

.section .text
	.global sum_smaller 
	
		sum_smaller:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
						
			movl 8(%ebp), %ecx		#acede ao 1º parametro da função (num1)
			movl 12(%ebp), %eax		#acede ao 2º parametro da função (num2)
			movl 16(%ebp), %edx		#acede ao 3º parametro da função (*smaller)
			cmpl %ecx, %eax			# compara num1 com num2
			jg greater				# salta caso eax seja maior
			
			movl %eax, (%edx)		# move o valor de eax (num2) para a posição em edx
			jmp sum					# salta para sum
			
			greater:
			movl %ecx, (%edx)		# move o valor de ecx (num1) para a posição de edx
			
			sum:
			addl %ecx, %eax			# soma ecx a eax
			
			end:
						
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret
