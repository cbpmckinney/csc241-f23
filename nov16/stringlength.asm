.data


.text 

// long int stringlength(char mystring[])
.global stringlength
stringlength:
    stp x29, x30, [sp, #-16]!
    mov x2, #0

    loop:
        ldrb w1, [x0, x2]
        cbz w1, end
        // Loop body goes here
        add x2, x2, #1
        b loop

    end:
    mov x0, x2
    ldp x29, x30, [sp], #16
    ret
    