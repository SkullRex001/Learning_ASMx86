section .bss     ;block starting symbol, used to reserve uninitialized memory
	num RESB 3 ; reserves 3 uninitilized bit in memory

section .data
	num2 DB 3 DUP(2)  ;declare 3 bytes and put 2 in all 3


section .text

global _start

_start:
	MOV bl,1   ;to move data into bss we need to do it through a register, we can't do it directly
	MOV [num],bl
	MOV [num+1],bl
	MOV [num+2],bl
	MOV bl,[num2]	;at this point if you check bl will have 0x00020202
	MOV eax,1
	INT 80h


