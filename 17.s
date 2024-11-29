section .data


section .text

global _start


_start:
	MOV eax,0b1010
	MOV ebx,0b1100
	AND eax,ebx
        MOV eax,0b1010                                           
	OR  eax,ebx
	NOT eax 	;here the problem is that NOT will flip all the 32 bits, which contains the bits that are not even the part of out number. So toget back the origin number we will set all the bits that are not the part ofout number to 0 again by using AND. or we can do the same by XOR operator byXOR number with 1 to get NOT
	AND eax,0xF 
	MOV eax,1
	MOV ebx,1
	INT 80h

