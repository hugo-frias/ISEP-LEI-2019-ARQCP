.section .data
.global s
.section .text
.global swapBytes # short swapBytes(void)

swapBytes:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx


  
movw s, %cx	#move o short s para o registo cx
movb %ch, %al #move o bit mais significativo do registo ecx para o bit menos significativo do registo eax
movb %cl, %ah #move o bit menos significativo do registo ecx para o bit mais significativo do registo eax


#epilogue
popl %ebx
movl %ebp, %esp
popl %ebp
ret
