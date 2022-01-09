.section .data

.section .text
	.global cube 
	
		cube:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl $0,%eax			#limpa os registos eax e ecx
			movl $0, %ecx
			
			movl 8(%ebp), %eax		#acede ao parametro da função 
			movl %eax, %ecx			#move x para ecx 
			
			imull %ecx, %eax		#faz x*x
			imull %ecx, %eax		#faz x*x*x
			
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret
			
			
