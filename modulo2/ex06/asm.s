.section .data

.global byte1
.global byte2

.section .text
.global swapBytes # short swapBytes(void)
.global concatBytes # short concatBytes(void)

concatBytes:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx

movb byte2, %ah #move o byte 2 para o registo mais significativo ah
movb byte1, %al #move o byt 1 para o registo menos significativo al


#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret
