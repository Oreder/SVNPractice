	.file	"number.c"
	.intel_syntax noprefix
	.text
	.globl	_getc
	.def	_getc;	.scl	2;	.type	32;	.endef
_getc:
LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax+4]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	js	L2
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	al, BYTE PTR [edx]
	movzx	eax, al
	lea	ecx, [edx+1]
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [edx], ecx
	jmp	L3
L2:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__filbuf
L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_putc
	.def	_putc;	.scl	2;	.type	32;	.endef
_putc:
LFB1:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax+4]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	js	L5
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax], dl
	mov	dl, BYTE PTR [eax]
	movzx	edx, dl
	lea	ecx, [eax+1]
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [eax], ecx
	jmp	L6
L5:
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__flsbuf
	mov	edx, eax
L6:
	mov	eax, edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_getchar
	.def	_getchar;	.scl	2;	.type	32;	.endef
_getchar:
LFB2:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR __imp___iob
	mov	eax, DWORD PTR [eax+4]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR __imp___iob
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR __imp___iob
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	js	L8
	mov	eax, DWORD PTR __imp___iob
	mov	edx, DWORD PTR [eax]
	mov	al, BYTE PTR [edx]
	movzx	eax, al
	lea	ecx, [edx+1]
	mov	edx, DWORD PTR __imp___iob
	mov	DWORD PTR [edx], ecx
	jmp	L9
L8:
	mov	eax, DWORD PTR __imp___iob
	mov	DWORD PTR [esp], eax
	call	__filbuf
L9:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_putchar
	.def	_putchar;	.scl	2;	.type	32;	.endef
_putchar:
LFB3:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR __imp___iob
	mov	eax, DWORD PTR [eax+36]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR __imp___iob
	mov	DWORD PTR [eax+36], edx
	mov	eax, DWORD PTR __imp___iob
	mov	eax, DWORD PTR [eax+36]
	test	eax, eax
	js	L11
	mov	eax, DWORD PTR __imp___iob
	mov	eax, DWORD PTR [eax+32]
	mov	edx, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax], dl
	mov	dl, BYTE PTR [eax]
	movzx	edx, dl
	lea	ecx, [eax+1]
	mov	eax, DWORD PTR __imp___iob
	mov	DWORD PTR [eax+32], ecx
	jmp	L12
L11:
	mov	eax, DWORD PTR __imp___iob
	add	eax, 32
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__flsbuf
	mov	edx, eax
L12:
	mov	eax, edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_fopen64
	.def	_fopen64;	.scl	2;	.type	32;	.endef
_fopen64:
LFB4:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_fopen
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_ftello64
	.def	_ftello64;	.scl	2;	.type	32;	.endef
_ftello64:
LFB5:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	lea	eax, [ebp-16]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_fgetpos
	test	eax, eax
	je	L15
	mov	eax, -1
	mov	edx, -1
	jmp	L16
L15:
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
L16:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Input number: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "Your number is ZERO\0"
LC3:
	.ascii "Number '%d' is POSITIVE\0"
LC4:
	.ascii "Number '%d' is NEGATIVE\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB6:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	lea	eax, [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	mov	eax, DWORD PTR [esp+28]
	test	eax, eax
	jne	L18
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	jmp	L19
L18:
	mov	eax, DWORD PTR [esp+28]
	test	eax, eax
	jle	L20
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
	jmp	L19
L20:
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC4
	call	_printf
L19:
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.def	__filbuf;	.scl	2;	.type	32;	.endef
	.def	__flsbuf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fgetpos;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
