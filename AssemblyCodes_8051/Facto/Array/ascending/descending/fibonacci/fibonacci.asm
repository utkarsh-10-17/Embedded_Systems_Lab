MOV R1,#0AH
MOV R2,#00H
MOV A,#00H
MOV DPTR,#2000H
MOVX @DPTR, A
INC A
INC DPTR
MOVX @DPTR, A
DEC R1
DEC R1
INC DPTR
MOV A,#00H
MOV B,#01H
LOOP: ADD A,B // A = A + B
	  MOV R2,A //  C = A + B
	  MOVX @DPTR, A
	  INC DPTR
	  MOV A,B// A = B
	  MOV B,R2// B = C
	  DJNZ R1,LOOP
END