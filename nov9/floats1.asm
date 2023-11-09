.data

mystring: .asciz "The sum of %f and %f is %f.\n"

float1: .word 0x3ED70A3D
float2: .word 0x3F30A3D7


.text

.global main
main:
    stp x29, x30, [sp, #-16]!

    ldr x0, =float1
    ldr s0, [x0]
    ldr x1, =float2
    ldr s1, [x1]

    fadd s2, s0, s1
    fcvt d0, s0
    fcvt d1, s1
    fcvt d2, s2

    ldr x0, =mystring
    bl printf

    ldp x29, x30, [sp], #16
    mov w0, #0
    ret
