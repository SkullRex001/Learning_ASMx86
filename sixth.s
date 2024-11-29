section .data
	
	list DB 1,2,3,4

section .text

global _start

_start:
	MOV bl,[list+3]
	MOV ecx,[list]
	MOV eax,1
	INT 80h
