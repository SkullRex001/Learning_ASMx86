section .data 

section .text

global _start

_start:
	MOV eax,11 ;similar to MUL, eax is used for division, similar to IMUL, there is IDIV
	MOV ecx,2
	DIV ecx  ;value in eax will be divided by value in and quotient will be stored in eax and remainder will be stored in edx
	MOV eax,1
	MOV ebx,1
	INT 80h
