.section .data
			
.section .text
	.global greater_date 
	
		greater_date:
		
			#prologue
			pushl %ebp
			movl %esp, %ebp
			
			movl 8(%ebp),%eax			# move o primeiro parametro da função para eax
			movl 12(%ebp),%ecx			# move o segundo parametro da função para ecx
			movl $0x00FFFF00, %edx		# move a mask para ir buscar o ano para edx
			andl %edx,%eax				# vai buscar o ano na date1
			andl %edx, %ecx				# vai buscar o ano na date2
			cmpl %eax, %ecx				# compara os anos e faz os diferentes saltos de acordo com o resultado
			je mes
			jg date2M		
			jl date1M
			
		mes:
			movl 8(%ebp),%eax			# move o primeiro parametro da função para eax
			movl 12(%ebp),%ecx			# move o segundo parametro da função para ecx
			movl $0x000000FF, %edx		# move a mask para ir buscar o mes para edx
			andl %edx,%eax				# vai buscar o mes na date1
			andl %edx, %ecx				# vai buscar o mes na date2
			cmpl %eax, %ecx				# compara os meses e faz os diferentes saltos de acordo com o resultado
			je dia
			jg date2M
			jl date1M
			
		dia:
			movl 8(%ebp),%eax			# move o primeiro parametro da função para eax
			movl 12(%ebp),%ecx			# move o segundo parametro da função para ecx
			movl $0xFF000000, %edx		# move a mask para ir buscar o dia para edx
			andl %edx,%eax				# vai buscar o dia na date1
			andl %edx, %ecx				# vai buscar o dia na date2
			cmpl %eax, %ecx				# compara os dias e faz os diferentes saltos de acordo com o resultado
			jg date2M
			jle date1M
			
		date2M:
			movl 12(%ebp), %eax			# move a date2 para eax para retornar
			jmp end
		
		date1M:
			movl 8(%ebp), %eax			# move a data1 para eax para retornar
			jmp end		
		
		end:
			#epilogue
			movl %ebp, %esp
			popl %ebp
			ret
