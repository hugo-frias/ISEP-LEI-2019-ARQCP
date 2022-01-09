.section .data
.global num
.section .text
.global check_num # char check_num(void)


check_num:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx
push %esi



movl $0, %esi #move 0 para esi
movl num, %eax #move a variavel num para eax
cmpl $0, %eax #compara eax com 0
jl num_negativo #verifica se o valor é inferior a zero, e caso seja, passa para num_negativo


num_positvo:
	movl $0, %edx #'limpa' o edx
	movl $2, %ecx #move 2 para ecx
	cdq #extende o sinal
	idivl %ecx #divide eax por ecx
	
	cmpl %edx, %esi #compara edx com esi
	je num_par_positivo #caso o resultado seja 0, é porque o resto é 0, sendo um numero par
	jne num_impar_positivo #caso contrário, é impar

num_negativo:
	movl $0, %edx #'limpa' o edx
	movl $2, %ecx #move 2 para ecx
	cdq #extende o sinal
	idivl %ecx #divide eax por ecx
	
	cmpl %edx, %esi #compara edx com esi
	je num_par_negativo #caso o resultado seja 0, é porque o resto é 0, sendo um numero par
	jne num_impar_negativo #caso contrário, é impar

num_par_positivo:
	movl $3, %eax #move 3 para eax
	jmp end

num_par_negativo:
	movl $1, %eax #move 1 para eax
	jmp end
	
num_impar_positivo:
	movl $4, %eax #move 4 para eax
	jmp end
	
num_impar_negativo:
	movl $2, %eax #move 2 para eax
	


end:

popl %esi
#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret
