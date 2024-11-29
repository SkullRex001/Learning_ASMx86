section .data
	x DD 3.14
	y DD 2.1

section .text
global _start

_start:
	MOVSS xmm0,[x]
	MOVSS xmm1,[y]
	UCOMISS xmm0,xmm1  ;comparison
	JA greater                 ;JB :- jump below or jump is less then, JBE:- jump below or equal , JA :- jump above , JAE :- jump above or equal , JE :- jump equal

greater:
	MOV ecx,1
end:
	MOV eax,1
	MOV ebx,1
	INT 80h
