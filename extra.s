section .data
	num DB 1
	num2 DB 2

section .text

global _start

_start:
	MOV bl,[num]   ;eax,ebx,ecx,edx ->32bits
	MOV cl,[num2]  ;ex, bx, cx, dx ->16bits
	MOV eax,1      ;al,ah,bl,bh,cl,ch,dl,dh ->8bits
	INT 80h
