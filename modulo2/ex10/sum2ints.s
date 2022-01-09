.section .data
.global op1
.global op2
.section .text
.global sum2ints # long sum2ints(void)

sum2ints:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx

movl op1, %eax #move a variavel op1 para o registo eax
movl op2, %ecx #move a variavel op2 para o registo ecx
movl $0, %edx #move o valor 0 para o registo edx
addl %ecx,%eax #adiciona op1+op2 através da soma dos registos ecx+eax
adcl $0, %edx #adiciona o valor carry á soma
cdq #extensão do sinal

#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret
