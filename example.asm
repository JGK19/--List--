	.file	"example.c"
	.text
	.globl	_append
	.def	_append;	.scl	2;	.type	32;	.endef
_append:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$8, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L2
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L4
L2:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
L4:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_popIndex
	.def	_popIndex;	.scl	2;	.type	32;	.endef
_popIndex:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 12(%ebp)
	jne	L6
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L5
L6:
	movl	$0, -16(%ebp)
	jmp	L8
L9:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	addl	$1, -16(%ebp)
L8:
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	-16(%ebp), %eax
	jg	L9
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$1, %eax
	cmpl	12(%ebp), %eax
	jne	L10
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%eax)
L10:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L5:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_pop
	.def	_pop;	.scl	2;	.type	32;	.endef
_pop:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_popIndex
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_get
	.def	_get;	.scl	2;	.type	32;	.endef
_get:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	L13
L14:
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	addl	$1, -8(%ebp)
L13:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L14
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_getNode
	.def	_getNode;	.scl	2;	.type	32;	.endef
_getNode:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	L17
L18:
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	addl	$1, -8(%ebp)
L17:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L18
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC0:
	.ascii " %i,\0"
LC1:
	.ascii "\10 ]\0"
	.text
	.globl	_printList
	.def	_printList;	.scl	2;	.type	32;	.endef
_printList:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$91, (%esp)
	call	_putchar
	jmp	L21
L22:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
L21:
	cmpl	$0, -12(%ebp)
	jne	L22
	movl	$LC1, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_freeList
	.def	_freeList;	.scl	2;	.type	32;	.endef
_freeList:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L24
L25:
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L24:
	cmpl	$0, -12(%ebp)
	jne	L25
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.globl	_troca
	.def	_troca;	.scl	2;	.type	32;	.endef
_troca:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_bubblesort
	.def	_bubblesort;	.scl	2;	.type	32;	.endef
_bubblesort:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -8(%ebp)
	jmp	L28
L32:
	movl	$0, -12(%ebp)
	jmp	L29
L31:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_get
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_get
	cmpl	%eax, %ebx
	jle	L30
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_getNode
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_getNode
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_troca
L30:
	addl	$1, -12(%ebp)
L29:
	movl	-16(%ebp), %eax
	subl	-8(%ebp), %eax
	subl	$1, %eax
	cmpl	-12(%ebp), %eax
	jg	L31
	addl	$1, -8(%ebp)
L28:
	movl	-16(%ebp), %eax
	subl	$1, %eax
	cmpl	-8(%ebp), %eax
	jg	L32
	nop
	addl	$24, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.globl	_list
	.def	_list;	.scl	2;	.type	32;	.endef
_list:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$48, %esp
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$_append, -28(%ebp)
	movl	$_pop, -24(%ebp)
	movl	$_popIndex, -20(%ebp)
	movl	$_get, -16(%ebp)
	movl	$_printList, -12(%ebp)
	movl	$_freeList, -8(%ebp)
	movl	$_bubblesort, -4(%ebp)
	movl	8(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-28(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-24(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-20(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-16(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-12(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	-8(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	-4(%ebp), %edx
	movl	%edx, 36(%eax)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	call	___main
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_list
	leal	20(%esp), %eax
	movl	%eax, 60(%esp)
	movl	32(%esp), %eax
	movl	$45, 4(%esp)
	movl	60(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	32(%esp), %eax
	movl	$1, 4(%esp)
	movl	60(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	32(%esp), %eax
	movl	$8, 4(%esp)
	movl	60(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	32(%esp), %eax
	movl	$76, 4(%esp)
	movl	60(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	48(%esp), %eax
	movl	60(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	48(%esp), %eax
	movl	60(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
