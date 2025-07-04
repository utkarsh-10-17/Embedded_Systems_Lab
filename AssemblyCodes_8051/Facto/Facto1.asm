ORG 0000H        ; Origin, start at address 0000H
MOV R1, #04H     ; Load the number 4 into register R1
MOV A, #01H      ; Initialize A with 1 (for multiplication)
MOV R7, A        ; Initialize R7 with 1 (R7 will hold the factorial result)

FACTORIAL_LOOP:
    MOV B, R1    ; Move the current value of R1 into B
    MUL AB       ; Multiply A by B, result stored in A
    MOV R7, A    ; Store the result in R7
    DJNZ R1, FACTORIAL_LOOP ; Decrement R1, repeat loop if R1 is not zero

END_LOOP:
    SJMP $       ; Infinite loop to end the program

END              ; End of the program
