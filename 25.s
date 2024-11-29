section .data


section .text

global main


addTwo:
	ADD eax,ebx
	RET   		;return back where the function is called from


main:

	MOV eax,4
	MOV ebx,1
	CALL addTwo
	MOV ebx,eax
	MOV eax,1
	INT 80h

	
