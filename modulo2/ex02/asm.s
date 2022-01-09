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

		movl op1, %ecx 		# move op1 para ecx
		movl op2, %eax 		# move op2 para eax
		addl %ecx, %eax		# eax = eax + ecx

		#epilogue
		movl %ebp, %esp 
		popl %ebp 
		ret
