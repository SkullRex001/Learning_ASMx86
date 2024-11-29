section .data


section .text

global _start

_start:
	MOV eax,1
	MOV ebx,2
	CMP eax,ebx  ;it tell what is eax when compared to ebx
	JL lesser    ;JL :- jumps when eax is less than ebx, there are JE :equals , JNE :- not equals , JG :- jump greater , JGR :- jump greater or equals  , JLE :- less then or equal , JZ:- jump if result is zero , JNZ :- jump is result is not zero
	JMP end      ;JUM :- always jump to the given label
lesser:
	MOV ecx,1
end: 
	INT 80h
