	.file	"getMax.c"
	.option nopic
	.attribute arch, "rv64i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	getMax
	.type	getMax, @function
getMax:
	ble	a1,zero,.L7
	mv	t3,a0
	addiw	a3,a1,-1
	slli	a3,a3,32
	srli	a3,a3,32
	slli	a3,a3,2
	addi	a5,a0,4
	add	a3,a3,a5
	mv	a6,a0
	li	a7,0
	li	a0,0
	li	t1,0
	j	.L3
.L4:
	addi	a5,a5,4
	beq	a5,a3,.L10
.L5:
	lw	a4,0(a5)
	bne	a4,a2,.L4
	addiw	a1,a1,1
	j	.L4
.L10:
	blt	a1,a7,.L6
	mv	a7,a1
	mv	a0,a2
.L6:
	addi	a6,a6,4
	beq	a6,a3,.L2
.L3:
	lw	a2,0(a6)
	mv	a5,t3
	mv	a1,t1
	j	.L5
.L7:
	li	a0,0
.L2:
	ret
	.size	getMax, .-getMax
	.ident	"GCC: (SiFive GCC 8.3.0-2020.04.1) 8.3.0"
