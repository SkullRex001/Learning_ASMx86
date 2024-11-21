section .data


section .txt

global _start

_start:
	MOV eax,1
	MOV ebx,1
	INT 80h
