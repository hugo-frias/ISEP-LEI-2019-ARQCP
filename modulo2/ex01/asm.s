.section .data
	.global op1
	.global op2
	.global res
.section .text
	.global sum # int sum(void)
	
	sum:
		#prologue
		pushl %ebp 
		movl %esp, %ebp 

		movl op1, %ecx 		# op1 = ecx
		movl op2, %eax 		# op2 = eax
		addl %ecx, %eax		# adiciona ecx a eax
		movl %eax, res 		# move o valor de eax para res
		
		#epilogue
		movl %ebp, %esp 
		popl %ebp 
		ret
