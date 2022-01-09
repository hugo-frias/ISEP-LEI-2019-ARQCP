.section .data
a:
	.int 4

b:
	.int 5
	
.global n
.global a
.global b
.section .text
.global algoritmo # int algoritmo(void)


algoritmo:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx

pushl %edi
pushl %esi



movl i, %edi #move i para o registo edi
movl n, %esi #move n para o registo esi
movl a, %eax #move a para o registo eax
movl b, %ecx #move b para o registo ecx

my_loop:
	cmpl %esi, %edi #compara i com n, de modo a saber se são iguais ou não
	jge end_my_loop #caso sejam iguais, o loop está terminado e dá jmp para o fim
	
	imull %eax, %eax #multiplica eax por eax (a²)
	movl $0, %edx #"limpa" o registo edx
	div %ecx #divide eax por ecx (a/b)
	movl %edi, %edx #move o valor de i para um registo auxiliar, em edx
	imull %edx, %edx #multiplica edx por edx (i²)
	imull %eax, %edx #multiplica eax por edx (i²*a²)
		
	addl $1, %edi #adiciona 1 a i, de modo a incrementar o contador
	jmp my_loop #volta ao inicio do loop
	
end_my_loop:


movl %edx, %eax	#move o resultado para o registo eax


#epilogue
popl %esi
popl %edi

popl %ebx
movl %ebp, %esp
popl %ebp
ret
