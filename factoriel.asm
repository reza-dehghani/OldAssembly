.MODEL SMALL
.STACK  200
.DATA
OUTPUT   DW  1
INPUT   DB  5   ;5!

.CODE
MAIN PROC FAR
    
push ds
        push 0
        mov ax, @data
        mov ds, ax

MOV AX, 1            
L1:
MOV OUTPUT, AX

MOV AL, INPUT
MUL OUTPUT

DEC INPUT
CMP INPUT, 0
JE  END_WHILE
 
LOOP    L1

END_WHILE:

MOV OUTPUT, AX

        main endp
    end main