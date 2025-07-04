ORG 00H
MOV 30H, #03H        
MOV 31H, #04H        
MOV 32H, #06H        
MOV 33H, #02H       

; Multiply values at 30H and 33H
MOV A, 30H           
MOV B, 33H           
MUL AB               
MOV 40H, A           
MOV 41H, B           

; Multiply values at 31H and 32H
MOV A, 31H           
MOV B, 32H           
MUL AB               
MOV 42H, A           
MOV 43H, B           

; Subtract the second product from the first product
MOV A, 40H           
CLR C                
SUBB A, 42H          
MOV 44H, A           

MOV A, 41H           
SUBB A, 43H          
MOV 45H, A           

END                  
