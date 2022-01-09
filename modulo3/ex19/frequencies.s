.section .data
	.global ptrgrades;
	.global num;
	.global ptrfreq;
	
.section .text
	.global frequencies # void frequencies(void)
	
	frequencies:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		pushl %edi
		
		movl ptrgrades,%esi 		# move o address do ptrvec para ebx
		movl ptrfreq, %edi
		movl num, %edx			# move zero para o contador edx
		movw $0, %ax
		movl $0, %ecx
		
	frequencies_loop_start:
		
		movb $0, %al
		cmpl $0, %edx
		je end
		decl %edx
		
		movb (%esi),%bl
		cmpb %al,%bl
		je zero
		addb $'1',%al
		cmpb %al,%bl
		je one
		addb $'1',%al
		cmpb %al,%bl
		je two
		addb $'1',%al
		cmpb %al,%bl
		je three
		addb $'1',%al
		cmpb %al,%bl
		je four
		addb $'1',%al
		cmpb %al,%bl
		je five
		addb $'1',%al
		cmpb %al,%bl
		je six
		addb $'1',%al
		cmpb %al,%bl
		je seven
		addb $'1',%al
		cmpb %al,%bl
		je eight
		addb $'1',%al
		cmpb %al,%bl
		je nine
		addb $'1',%al
		cmpb %al,%bl
		je ten
		addb $'1',%al
		cmpb %al,%bl
		je eleven 
		addb $'1',%al
		cmpb %al,%bl
		je twelve
		addb $'1',%al
		cmpb %al,%bl
		je thirteen
		addb $'1',%al
		cmpb %al,%bl
		je fourteen
		addb $'1',%al
		cmpb %al,%bl
		je fifteen
		addb $'1',%al
		cmpb %al,%bl
		je sixteen
		addb $'1',%al
		cmpb %al,%bl
		je seventeen
		addb $'1',%al
		cmpb %al,%bl
		je eighteen
		addb $'1',%al
		cmpb %al,%bl
		je nineteen
		addb $'1',%al
		cmpb %al,%bl
		je twenty
					
		addl $1, %esi		# adiciona 1 ao ebx de modo a andar 1 posição no array de char
		jmp frequencies_loop_start		# salta de volta para o inicio do loop	
	
	zero:
		
		addl $1, (%edi)
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
		
	one:
		
		addl $1, %edi
		addl $1, (%edi)
		subl $1, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
	two:
		
		addl $2, %edi
		addl $1, (%edi)
		subl $2, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
		
	three:
		
		addl $3, %edi
		addl $1, (%edi)
		subl $3, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
		
	four:
		
		addl $4, %edi
		addl $1, (%edi)
		subl $4, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
		
	five:
		
		addl $5, %edi
		addl $1, (%edi)
		subl $5, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
		
	six:
		
		addl $6, %edi
		addl $1, (%edi)
		subl $6, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
	
	seven:
		
		addl $7, %edi
		addl $1, (%edi)
		subl $7, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
	
	eight:
		
		addl $8, %edi
		addl $1, (%edi)
		subl $8, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
	nine:
		
		addl $9,%edi
		addl $1,(%edi)
		subl $9,%edi
		addl $1,%esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
		
	ten:
		addl $10, %edi
		addl $1, (%edi)
		subl $10, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start
	
	eleven:
		
		addl $11, %edi
		addl $1, (%edi)
		subl $11, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	twelve:
		
		addl $12, %edi
		addl $1, (%edi)
		subl $12, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	thirteen:
		
		addl $13, %edi
		addl $1, (%edi)
		subl $13, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	fourteen:
		
		addl $14, %edi
		addl $1, (%edi)
		subl $14, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	fifteen:
		
		addl $15, %edi
		addl $1, (%edi)
		subl $15, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	sixteen:
		
		addl $16, %edi
		addl $1, (%edi)
		subl $16, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	seventeen:
		addl $17, %edi
		addl $1, (%edi)
		subl $17, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	
	eighteen:
		addl $18, %edi
		addl $1, (%edi)
		subl $18, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	
	nineteen:
		addl $19, %edi
		addl $1, (%edi)
		subl $19, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	twenty:
		addl $20, %edi
		addl $1, (%edi)
		subl $20, %edi
		addl $1, %esi		# adiciona 1 ao esi de modo a andar 1 posição no array de char
		jmp frequencies_loop_start	
	
	end:
		
		#epilogue
		popl %edi
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
