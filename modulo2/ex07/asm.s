.section .data
.global byte1
.global byte2
.global s1
.global s2
.section .text
.global crossSumBytes # short crossSumBytes(void)

crossSumBytes:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx

movw s2, %cx #move o short s2 para o registo cx
movw s1, %ax #move o short s1 para o registo ax
addb %ch, %al #adiciona o byte localizado em ch, ao byte localizado em al
addb %cl, %ah #adiciona o byte localizado em cl, ao byte localizado em ah


#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret
