.section .data
.global num
.section .text
.global steps # int steps(void)


steps:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx

movl num, %eax #move o valor num para eax
movl num, %ebx #copia o valor num para ebx também

imul $3, %eax #multiplica o valor em eax por 3

addl $6, %eax #adiciona 6 ao valor em eax

movl $3, %ecx #move o valor 3 para ecx
movl $0, %edx #"limpa" o registo edx
div %ecx #divide o valor em eax por ecx

addl $12, %eax #adiciona 12 ao registo eax

subl %ebx, %eax #subtrai o valor inicial guardado em ebx pelo valor atual de eax

subl $1, %eax #subtrai 1 a eax

#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret
