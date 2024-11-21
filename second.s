section .data
	num DD 5

section .txt

global _start:


_start:
	MOV eax,1
	MOV ebx,[num]
	INT 80h
