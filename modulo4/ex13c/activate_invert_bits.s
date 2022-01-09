.section .text

	.global activate_bits

		activate_bits:

			#prologue
			pushl %ebp
			movl %esp, %ebp

			pushl %ebx
			pushl %esi
			pushl %edi

			movl 8(%ebp), %eax
			movb 12(%ebp), %cl
			movl $32, %esi
			subl 12(%ebp), %esi   # %esi = %esi (32) - 12(%ebp) (left)
			movl $1, %edx

		left_loop:
			movl $1, %ebx         # %ebx = 1
			cmpl %edx, %esi
			je right              #salta para a função se %esi (32-left) for igual a %edx (contador). Ou seja, se todos os bits à esquerda do left em %eax (a) tiverem sido analisados
			incb %cl              # %cl = %cl + 1
			shll %cl, %ebx        # %ebx = %ebx (1) << %cl
			movl %ebx, %edi
			andl %eax, %ebx       # %ebx = %ebx (1 << %cl) & %eax (a)
			cmpl $0, %ebx
			je change             #salta para a função se %ebx for igual a 0. Ou seja, se o bit da posição (%cl) for igual a 0. Ou seja, se estiver 'inativo'

		increment:
			incl %edx             # %edx = %edx + 1
			jmp left_loop

		change:
			xorl %edi, %eax       # %eax = %eax (a) ^ %edi (1 << %cl)
			jmp increment

		right:
			movb 16(%ebp), %cl
			movl $1, %esi
			addl 16(%ebp), %esi   # %esi = %esi (1) + 16(%ebp) (right)
			movl $1, %edx         # reinicia o contador

		right_loop:
			movl $1, %ebx         # %ebx = 1
			cmpl %edx, %esi
			je end                #salta para o fim se %esi (1-right) for igual a %edx (contador). Ou seja, se todos os bits à direita do right em %eax (a) tiverem sido analisados
			decb %cl              # %cl = %cl - 1
			shll %cl, %ebx        # %ebx = %ebx (1) << %cl
			movl %ebx, %edi
			andl %eax, %ebx       # %ebx = %ebx (1 << %cl) & %eax (a)
			cmpl $0, %ebx
			je change1            #salta para a função se %ebx for igual a 0. Ou seja, se o bit da posição (%cl) for igual a 0. Ou seja, se estiver 'inativo'

		increment1:
			incl %edx             # %edx = %edx + 1
			jmp right_loop

		change1:
			xorl %edi, %eax       # %eax = %eax (a) ^ %edi (1 << %cl)
			jmp increment1

		end:

			popl %edi
			popl %esi
			popl %ebx

			#epilogue
			movl %ebp, %esp
			popl %ebp

			ret


	.global activate_invert_bits

		activate_invert_bits:

			#prologue
			pushl %ebp
			movl %esp, %ebp

			#pushl %ebx
			#pushl %esi
			#pushl %edi

			movl 16(%ebp), %ecx
			pushl %ecx
			movl 12(%ebp), %ecx
			pushl %ecx
			movl 8(%ebp), %ecx
			pushl %ecx
			call activate_bits       #chamada da função activate_bits, que 'ativa' todos os bits que se encontram à esquerda do 12(%ebp) (left) e os que se encontram à direita do 16(%ebp) (right) no número 8(%ebp) (a)
			popl %ecx
			popl %ecx
			popl %ecx

			xor $-1, %eax            # %eax = %eax ^ (-1). Ou seja, inverte todos os bits de %eax (a)

			#popl %edi
			#popl %esi
			#popl %ebx

			#epilogue
			movl %ebp, %esp
			popl %ebp

			ret
