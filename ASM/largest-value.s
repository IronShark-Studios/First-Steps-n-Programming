.globl _start

    .section .data

numberOfNumbers:
    .quad 7

numbers:
    .quad 5, 20, 33, 80, 52, 10, 1


    .section .text

_start:
    movq numberOfNumbers, %rcx
    movq $numbers, %rbx
    movq $0, %rdi

    cmp $0, %rcx
    je endloop

myLoop:
    movq (%rbx), %rax

    cmp %rdi, %rax
    jbe loopControl

    movq %rax, %rdi

loopControl:
    addq $8, %rbx
    loopq myLoop

endLoop:
    movq $60, %rax
    systemcall
