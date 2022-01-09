.section .data
.global i
.global j
.section .text
.global f # int f(void)
.global f2 # int f2(void)
.global f3 # int f3(void)
.global f4 # int f4(void)


f:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx
push %esi

movl i, %ecx #move i para ecx
movl j, %edx #move j para edx

cmpl %edx, %ecx #compara i com jo
je jmp_igual #faz o jump caso sejam iguais

jmp_nao_igual:
	addl %ecx, %edx #adiciona i a j
	subl $1,%edx #subtrai 1 ao valor em edx
	movl %edx, %eax #move o resultado para eax
	jmp end

jmp_igual:
	subl %edx, %ecx #subtrai j a i
	addl $1, %ecx #adiciona 1 ao resultado
	movl %ecx, %eax #move o resultador para eax

end:

popl %esi
#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret

f2:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx
push %esi

movl i, %ecx #move i para ecx
movl j, %edx #move j para edx

cmpl %edx, %ecx #compara i com j
jg jmp_maior #faz o jump caso i seja maior


jmp_menor:
	addl $1, %edx #adiciona 1 ao valor de j
	jmp end2

jmp_maior:
	subl $1, %ecx #subtrai 1 ao valor de i


end2:

movl %edx, %eax #move o valor de j para eax
mull %ecx #multiplica o resultado pelo valor de i



popl %esi
#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret

f3:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx
push %esi

movl i, %ebx #move o valor de i para ebx
movl j, %edx #move o valor de j para edx

cmpl %edx, %ebx #compara i com j
jl jmp_menor3 #faz o jump caso i seja menor que j


jmp_maior_igual:
	movl %edx, %eax #move o valor de j para eax
	mull %ebx	#multiplica eax por ebx (j*i)
	movl %eax, %ecx #move o resultado para o registo ecx
	
	addl $1, %ebx #adiciona 1 ao valor de i
	movl %ebx, %eax #move o valor de i para o registo eax
	jmp end3

jmp_menor3:
	movl %edx, %ecx #move o valor de j para ecx
	addl %ebx, %ecx #adiciona o valor de i ao valor de j
	
	movl %ebx, %eax #move o valor de i para eax
	addl %edx, %eax #adiciona j ao valor em eax
	addl $2, %eax #adiciona 2 ao valor de eax

end3:

movl $0, %edx #"limpa" o valor de edx
divl %ecx #divide o valor de eax pelo valor em ecx



popl %esi
#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret


f4:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx
push %esi

movl i, %ebx #move o valor de i para ebx
movl j, %edx #move o valor de j para edx

movl %ebx, %esi #move o valor de i para o registo esi
addl %edx, %esi #adiciona o valor de j ao valor de i guardado em esi

cmpl $10, %esi #compara a soma de i+j com o valor 10
jl jmp_menor4  #faz o jump caso seja menor

jmp_maior_igual4:
	movl $3, %ecx #move o valor 3 para ecx
	movl %edx, %eax #move o valor de j para eax
	mull %edx #multiplica j por j (j²)
	divl %ecx #divide j² por 3
	jmp end4
	
	
jmp_menor4:
	movl $4, %eax #move o valor de 4 para eax
	mull %ebx #multiplica 4 por i
	mull %ebx #volta a multiplicar o resultado anterior por i
	
	
end4:


popl %esi
#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret
