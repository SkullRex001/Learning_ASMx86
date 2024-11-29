section .data

section .text

global _start

_start:
	MOV eax,12
	SHR eax,1 ;shift right by 1 bit
	SHL eax,2 ; sift left by 2 bit
	MOV eax,1
	MOV ebx,1
	INT 80h
