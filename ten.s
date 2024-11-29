section .data



section .text

global _start

_start:
	MOV al,0b11111111
	MOV bl,0b0001
	ADD al,bl
	ADC ah,0  ;this instruction add the carry bit to the next section ofa register so we get result insted of zero, because the first 8 bit felt short
	INT 80h
