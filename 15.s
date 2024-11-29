section .data

section .text

global _start
_start:
	MOV al,0xFF  ; This will be stored as -1 as 0xFF is 11111111 and it is the two's compliment of -1 when using signed multilpication, if we used unsgned multiplication, it will be stored as 255
	MOV bl,2
	IMUL bl ;signed multiplication
	MOV al,1
	MOV bl,1
	INT 80h
