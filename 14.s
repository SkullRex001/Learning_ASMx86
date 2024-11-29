section .data


section .text

global _start


_start:
	MOV al,0xFF
	MOV bl,2
	MUL bl ;in multiplication we don't need to care about the overflow, like we did in addition, MUL operator automatically expands the size of the register if the value of the multiplicaition does not fit the result. You just have to check the correct size register. Like here we have to check ax or eax to see the value. If we check al we will see only some bits of the actual value and it will appear as the answer is wrong.
	 MOV eax, 1          ; System call number for exit.
	 MOV ebx, 0          ; Exit code 0.	
	 INT 80h             ; Call the kernel to exit.
								
