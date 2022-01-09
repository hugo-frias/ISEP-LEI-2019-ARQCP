.section .data
	.global ptr1
	.global ptr2
	.global ptr3
	
.section .text
	.global str_cat # void str_cat(void)
	
	str_cat:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		
		movl ptr3, %eax 	# move ptr1 para eax
		movl ptr1, %ebx		# move ptr2 para ebx
		movl ptr2, %ecx 	# move ptr3 para ecx
				
		
		str_cat_loop:
		
		movb (%ebx), %dl		# move o conteudo de ebx para o registo dl
		cmp $0, %dl				# verifica se é o fim da string
		je str_cat_loop2		# se for, passa para o loop seguinte que vai introduzir a outra string
		
		movb %dl, (%eax)		# caso não seja, move o char em dl para eax
		incl %ebx				# incrementa o address para mover para o proximo char
		incl %eax				# incrementa o address para mover para o proximo char
		jmp str_cat_loop		# volta ao inicio do loop
		
		
		str_cat_loop2:
		movb (%ecx), %dl		# move o conteudo de ecx para o registo dl
		cmp $0, %dl				# verifica se é o fim da string
		je end					# se for, passa para o fim
		
		movb %dl, (%eax)		# caso não seja, move o char em dl para eax
		incl %ecx				# incrementa o address para mover para o proximo char
		incl %eax				# incrementa o address para mover para o proximo char
		jmp str_cat_loop2		# volta ao inicio do loop
		
		
	
		end:		
		
		
		movb $0, (%eax)			# fecha a string
		
		#epilogue

		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
