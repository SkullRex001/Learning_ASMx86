section .data


section .text

global _start

_start:
	MOV al,2
	MOV bl,3
	MUL bl ; Note:- MUL only accept one operand, it automatically multilpy what's in al with bl (here) and stores the value in al 
	INT 80h
