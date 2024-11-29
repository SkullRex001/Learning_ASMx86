section .data


section .text

global _start

_start:
	MOV eax,3
	MOV ebx,5
	SUB eax,ebx ;this will give -2 but it will be represented as two's compliment
	MOV ebx,2
	ADD eax,ebx ;this will give zero
	INT 80h
