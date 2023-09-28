.data 

mystring: .asciz "Hello, world!\n"
myint: .word 0x1832
mybigint: .dword 0xDEADBEEF


.text 


.global main
main:
    stp x29, x30, [sp, #-16]!

    ldr x1, =mystring   // This is like &mystring
    bl puts 
    //branching to puts       


    ldp x29, x30, [sp], #16
    mov w0, #0
    ret

