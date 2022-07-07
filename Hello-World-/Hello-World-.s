	.text
	.globl	_start
	.p2align	2
	.type	_start,@function
_start:
	mov	x0, xzr
	ldr	x1, =Hello_World_
	mov	x2, #Hello_World_len
	mov	w8, #64
	svc	#0

	mov	x0, xzr
	mov	w8, #93
	svc	#0
.Lfunc_end0:
	.size	_start, .Lfunc_end0-_start

	.type	Hello_World_,@object
	.data
	.globl	Hello_World_
Hello_World_:
	.asciz	"Hello, World!\n"
Hello_World_len = . - Hello_World_

