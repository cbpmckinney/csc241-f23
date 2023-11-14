.data

mystring: .asciz "The pointer is %p.\n"
myval: .word 0xFFFFFFFF
myptr: .dword 0x0
instr: .asciz "%[^\n]31s"
prmpt: .asciz "Type a string, bro\n"

.text

.global main
main:
    stp x29, x30, [sp, #-16]!

    //ldr x0, =myval
    //ldr w0, [x0]
    mov w0, #32  //ask for 32 bytes of memory
    bl malloc

    //store pointer for later
    ldr x1, =myptr
    str x0, [x1]

    mov x1, x0
    ldr x0, =mystring
    bl printf

    ldr x0, =prmpt
    bl puts

    ldr x0, =instr
    ldr x2, =myptr
    ldr x1, [x2]
    bl scanf 


    ldr x1, =myptr
    ldr x0, [x1]
    bl free  // free allocated memory

    ldp x29, x30, [sp], #16
    mov w0, #0
    ret
