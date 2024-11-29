section .data
	
	string1 DB "ABA",0 ;to tell where the first string has ended in memory
	string2 DB "CDR",0 ;to tell where the second string has ended in the memory

section .text

global _start

_start:
	MOV bl,[string1]
	MOV eax,1
	INT 80h
