ORG 0000H        ; Starting address

MOV R4, #04H     ; Outer loop counter (number of passes)
AGAIN:
    MOV R3, #04H ; Inner loop counter (number of comparisons)
    MOV R0, #30H ; Start address of the array in memory

LOOP1:
    MOV A, @R0   ; Load the current array element into A
    MOV B, A     ; Move A to B for comparison
    INC R0       ; Point to the next array element
    MOV A, @R0   ; Load the next array element into A
    CJNE A, B, CONTINUE  ; If A and B are not equal, continue            

CONTINUE:JC SKIP 
    MOV @R0, B   ; Swap elements if A < B
    DEC R0       ; Move back to the previous element
    MOV @R0, A   ; Store the larger element in the previous position
    INC R0       ; Restore R0 to the current position

SKIP:DJNZ R3, LOOP1  ; Decrement inner loop counter, repeat if not zero
     DJNZ R4, AGAIN  ; Decrement outer loop counter, repeat if not
	 
STOP:SJMP STOP
	END