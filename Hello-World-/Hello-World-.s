	.text
	.globl	_start
	.p2align	2
	.type	_start,@function
_start:
	mov	x0, #1
	//ldr	x1, =Hello_World_
	adrp	x1, Hello_World_
	add	x1, x1, :lo12:Hello_World_
	mov	x2, #Hello_World_len
	mov	x8, #64
	svc	#0

	mov	x0, xzr
	mov	x8, #93
	svc	#0

	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	_start, .Lfunc_end0-_start


	.type	Hello_World_,@object
	.section	.rodata,"a",@progbits
	.globl	Hello_World_
Hello_World_:
	.asciz	"Hello, World!\n"

Hello_World_len = . - Hello_World_

