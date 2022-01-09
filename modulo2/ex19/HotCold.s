.section .data

	.global current
	.global desired

.section .text
	.global needed_time

	needed_time:
	
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movw current, %ax		# move current para ax
		movw desired, %cx		# move desired para cx
		
        cmpw %ax,%cx			# compara as temperaturas
		jg increaseTemp			# jump caso seja para aumentar a temperatura
		jl decreaseTemp			# jump caso seja para diminuir a temperatura
		
		movl $0, %eax			# move 0 para eax para retornar 0 porque as temperaturas serao iguais

	increaseTemp:
	
		movw $120, %bx			# move 120 para bx
		subw %ax, %cx			# cx = cx - ax
		imulw %cx, %bx			# multiplica cx por bx 
		movsxw %bx, %eax		# move bx para eax pondo assim o resultado em 32 bits
		jmp end


	decreaseTemp:
	
		movw $180, %bx			# move 180 para bx		
		subw %cx, %ax			# cx = cx - ax
		imulw %ax, %bx			# multiplica cx por bx 
		movsxw %bx, %eax		# move bx para eax pondo assim o resultado em 32 bits
		jmp end

	end:
	
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
