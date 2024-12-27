# This progam is an example of the basic arithmatic operations.

    .globl _start

    .section .text

_start:
    movq $13, %r9
    movq %r9, %rax
    addq %r9, %rax
    movq $1, %rdi
    subq %rdi, %rax
    movq $3, %r13
    addq %r13, %rax
    movq %rax, %rdi

    movq $60, %rax

    syscall
