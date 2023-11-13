.data

mystring: .asciz "The pointer is %p.\n"
myval: .word 0xFFFFFFFF
myptr: .dword 0x0

.text

.global main
main:
    stp x29, x30, [sp, #-16]!

    //ldr x0, =myval
    //ldr w0, [x0]
    mov w0, #32  //ask for 32 bytes of memory
    bl malloc

    str x0, [sp, #-16]! //store pointer for later

    mov x1, x0
    ldr x0, =mystring
    bl printf

    ldr x0, [sp], #16
    bl free  // free allocated memory

    ldp x29, x30, [sp], #16
    mov w0, #0
    ret
