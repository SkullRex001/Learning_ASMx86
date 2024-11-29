section .data
	num DB 1 ;1byte is assigned in stack and it's address is stored in num
	num2 DB 2 ;1byte just next to num2 is assigned in stack and it's address in stored in num2


section .text
global _start

_start:
	MOV ebx,[num]   ;this is not how to do it
	MOV ecx,[num2]  ;this is not how to do it
	MOV eax,1
	INT 80h
