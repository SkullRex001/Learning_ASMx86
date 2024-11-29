extern test
extern exit

section .data



section .text

global main


main:
	PUSH 1  ; b argument of text(int a , int b)
	PUSH 2	; a argument of text(int a , int b)
	CALL test
	PUSH eax ; the return value is stored in the eax register, so we push it to the stack so that so it can be collected as the argument for the exit function we call next
	CALL exit
	
