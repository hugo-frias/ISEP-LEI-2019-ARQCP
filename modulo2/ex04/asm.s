.section .data
	.global op1
	.global op2
	.global op3
	.global op4
	op3: 
		.int 2
	op4: 
		.int 2

.section .text
	.global sum_v3 # int sum_v3(void)

	sum_v3:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movl op1, %eax		# eax = op1
		movl op2, %ebx		# ebx = op2
		movl op4, %ecx		# ecx = op3
		movl op3, %edx		# edx = op4

		addl %ecx, %edx		# edx = edx + ecx
		subl %ebx, %edx		# edx = edx - ebx
		addl %edx, %eax		# eax = edx + eax

		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret



