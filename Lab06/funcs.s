.text
.global my_max
.global my_pow

# Computes maximum of 2 arguments
# You can assume argument 1 (x) is in %edi
# You can assume argument 2 (y) is in %esi
# If you need to store temporary values, you may use the following registers:
#   %eax, %ecx, %edx, %esi, %edi, %r8d, %r9d, %r10d, %r11d
# DO NOT USE other registers. We will learn why soon.
my_max:
    movl $0, %eax
    cmpl %edi, %esi
    jge .OTHER
    movl %edi, %eax
    jmp .END
    
.OTHER:
    movl %esi, %eax
    
.END:
    ret

# Computes base^exp
# You can assume argument 1 (base) is in %edi
# You can assume argument 2 (exp) is in %esi
# If you need to store temporary values, you may use the following registers:
#   %eax, %ecx, %edx, %esi, %edi, %r8d, %r9d, %r10d, %r11d
# DO NOT USE other registers. We will learn why soon.
my_pow:
    movl $0, %eax
    movl %edi, %ecx
    movl $2, %edx
     
.POWERLOOP:
    imull %edi, %ecx
    inc %edx
    cmpl %esi, %edx
    jle .POWERLOOP
     
    movl %ecx, %eax
    ret
