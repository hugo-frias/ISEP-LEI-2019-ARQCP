.section .data
	.global op1
	.global op2

.section .text
	.global test_flags

	test_flags:

		# prologue
		pushl %ebp
		movl %esp, %ebp

		mov op1, %eax  			#op1 = eax
		mov op2, %ecx  			#op2 = ecx
		
		add %ecx, %eax  		# %eax = %eax + %ecx
		jc flag_activated 		#verifica se a carry flag foi alterada para 1
		jo flag_activated 		#verifica se a overflow flag foi alterada para 1
		mov $0, %eax  			#se nunhuma das flags foi ativada, eax será defenido como 0
		jmp end    				

	flag_activated:   		
		mov $1, %eax  		# %eax = 1

 

	end:

		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret

 
