.section .data

.section .text
	.global greatest 
	
		greatest:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl $0,%eax			#limpa os registos eax, ecx e edx
			movl $0, %ecx	
			movl $0, %edx
						
			movl 8(%ebp), %eax		#acede ao 1º parametro da função 
			movl 12(%ebp), %ecx		#acede ao 2º parametro da função 
			movl 16(%ebp), %edx		#acede ao 3º parametro da função 
			
			cmpl %eax, %ecx			#compara se a é maior que b 
			jg greater
			cmpl %eax, %edx			#compara se a é maior que c
			jg greater
			jmp end					# se for maior que os 10 salta para o end
			
		greater:				
				
			cmpl %ecx,%edx			# compara se b é maior que c
			jg edxG					# salta se c for maior
			
			movl %ecx, %eax			#caso nao seja b  é o maior dos 3
			jmp end
		
		edxG:
		
			movl %edx,%eax		#move c para eax para retornar
			jmp end
						
		end:
						
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret
