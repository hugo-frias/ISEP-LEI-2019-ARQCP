.section .data
	.global op1
	.global op2
	
.section .text
	.global sum_v2 # int sum_v2(void)
	const:
		.int 15

	sum_v2:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movl op1, %ecx		# move op1 para ecx
		movl op2, %edx		# move op2 para edx
		movl const, %eax	# move const para eax
		movl const, %ebx	# move const para ebx

		subl %ecx, %eax		# eax = eax - ecx
		subl %edx, %ebx		# ebx = ebx -edx
		subl %ebx, %eax		# eax = eax - ebx

		#epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

