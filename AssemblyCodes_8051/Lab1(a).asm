// Factorial program (number =4, and 4! = 1*2*3*4= 24 = 18H)

ORG 0000H
MOV R1, #04
MOV R7,#01
LCALL FACT
MOV R7, A
FACT:
MOV A,R7
CJNE R1, #00,UP
SJMP UP1
UP:
MOV B,R1
MUL AB
DJNZ R1, UP
UP1:
RET
END