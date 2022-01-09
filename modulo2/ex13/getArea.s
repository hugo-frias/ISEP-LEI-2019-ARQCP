.section .data
.global base
.global height
.section .text
.global getArea # int getArea(void)


getArea:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx

movl base, %ebx #move o valor da base para o registo ebx
movl height, %eax #move o valor da altura para o registo eax
imul %ebx, %eax #multiplica a base pela altura
movl $2, %ecx #move o valor 2 para o registo ecx
movl $0, %edx #"limpa" o registo edx
div %ecx #divide o valor em eax por ecx (base*altura/2)

#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret
