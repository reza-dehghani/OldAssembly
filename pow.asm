;while(pow>1)
;{
;  x=x*pow;
;  pow--;  
;}

.model small
.stack 200
.data
     
     X  DB  3
     POW    DB  5
     RESULT DW  0
     
     ;3^5
     
.code
    main proc far
        push ds
        push 0
        mov ax, @data
        mov ds, ax
        
        MOV AX, 0
        MOV AL, X
        
        WHILE:

        MOV RESULT, AX
        MUL X
        
        DEC POW
        CMP POW, 1
        JG  WHILE
        
        MOV RESULT, AX
        
        
        
        ret
        main endp
        end main