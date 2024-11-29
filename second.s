section .data       ; Data section for defining variables
    num DD 5        ; Define a double word (32-bit) variable `num` with an initial value of 5

section .text       ; Code section
global _start       ; Declare the entry point for the program

_start:             ; Label for the program entry point
    MOV eax,1       ; Move the value 1 into the `eax` register (1 is the exit syscall number)
    MOV ebx,[num]   ; Move the value of `num` into the `ebx` register
    INT 80h         ; Trigger interrupt 80h to make a system call (in this case, exit)

