section .data
	x DD 3.14
	y DD 2.1

section .text

global _start

_start:
	MOVSS xmm0,[x]  ;xmm0 to xmm15 are special registers used to deal with floating point numbers
	MOVSS xmm1,[y]
	ADDSS xmm0,xmm1
	MOV ebx,1
	MOV eax,1
	INT 80h
