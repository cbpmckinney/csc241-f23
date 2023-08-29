	.arch armv8-a
	.file	"aug29.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"The sum of %i and %f is %f\n"
	.align	3
.LC1:
	.string	"The quotient of %li and %i is %i\n"
	.align	3
.LC2:
	.string	"And the remainder is %li\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	mov	w0, 5
	str	w0, [sp, 60]
	mov	w0, 13107
	movk	w0, 0x4013, lsl 16
	fmov	s0, w0
	str	s0, [sp, 56]
	ldr	s0, [sp, 60]
	scvtf	s0, s0
	ldr	s1, [sp, 56]
	fadd	s0, s1, s0
	str	s0, [sp, 52]
	ldr	s0, [sp, 56]
	fcvt	d2, s0
	ldr	s0, [sp, 52]
	fcvt	d0, s0
	fmov	d1, d0
	fmov	d0, d2
	ldr	w1, [sp, 60]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	x0, 42
	str	x0, [sp, 40]
	adrp	x0, .LC3
	ldr	d0, [x0, #:lo12:.LC3]
	str	d0, [sp, 32]
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	sdiv	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x3, [sp, 24]
	ldr	w2, [sp, 60]
	ldr	x1, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldrsw	x1, [sp, 60]
	ldr	x0, [sp, 40]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC3:
	.word	-1717986918
	.word	1075681689
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
