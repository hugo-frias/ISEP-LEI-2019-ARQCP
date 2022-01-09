.section .data
	.global ptrvec
    .global num

.section .text
	.global vec_greater20

	vec_greater20:
	
		# prologue
        pushl %ebp    
        movl %esp, %ebp 
        pushl %esi
        pushl %edi
        pushl %ebx
        
        
        movl num, %eax              # move num para eax
        cmpl $0, %eax               # verifica se o array é nulo
        je null

        movl ptrvec, %esi           # move ptrvec para esi
        movl $0, %eax               # move 0 para eax para começar o contador de numeros maiores que 20
        movl num, %edi              # move o número de elementos do array para edi (temp 32bits)

	compare:
        cmpl $0, %edi               # compara para ver se é o fim do array
        je end                            

        movl (%esi), %ecx           # move o valor apontado para ecx
        cmpl $20, %ecx              # compara o valor com 20
        jg bigger20                 # se maior que 20 

        decl %edi                   # decrementa o número de números do array a ler
        addl $4, %ecx               # aumento o pointer mas não o contador de numeros maiores que 20
        jmp compare                 


	bigger20:
        incl %eax                   # incrementa a quantidade de números maiores que 20
        decl %edi                   # decrementa o número de elementos a ler
        addl $4, %ecx               # avança no pointer
        jmp compare

	null:
        movl $0, %eax 				# move 0 para eax para retornar 0
        jmp end
        
        
	end:
        
		# epilogue
        popl %ebx
        popl %edi
        popl %esi
        movl %ebp, %esp
        popl %ebp        
        ret
