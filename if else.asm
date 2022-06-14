    ;if(a>b)
    ;c = a *b;
    ;else
    ;c = a/b;
    
.model  small
.stack 100
.data
 a  db 10
 b  db 20
 c  dw 0
 
.code

  main proc far   
    
    push ds
    push 0
    mov ax , @data
    mov ds ,ax
   ;--------------------
    mov al, a
    cmp al, b
    jle else
    mul b
    mov c, ax
    jmp next
else:cbw
    div b
    mov bl, al
    mov bh ,0
    mov c,bx    
    
next:ret
  main endp
 end main