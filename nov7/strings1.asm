.data

mystring: .asciz "Wabash!\0"

.text

.global main
main:
    stp x29, x30, [sp, #-16]!

    ldr x0, =mystring
    bl stringlength

    ldp x29, x30, [sp], #16
    mov w0, #0
    ret

.global stringlength
stringlength:
    stp x29, x30, [sp, #-16]!
    mov x2, #0

    loop:
        ldrb w1, [x0]
        cbz w1, end
        // Loop body goes here

    end:
    ldp x29, x30, [sp], #16
    ret