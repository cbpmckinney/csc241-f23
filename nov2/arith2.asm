.data


.text

.global main
main:
    stp x29, x30, [sp, #-16]!

    // addition instructions: add, adc, adds, adcs 


    ldp x29, x30, [sp], #16
    mov w0, #0
    ret 
