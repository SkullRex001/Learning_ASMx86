section .data


section .text

global _start


_start:
	MOV eax,1
	MOV ebx,2
	ADD eax,ebx  ;Add what's in eax and ebx and store in eax
	INT 80h
