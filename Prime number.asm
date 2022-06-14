; avval bodan
;h=0
; if x<0 return 0;
; for (int c =2; c < x/2; c++){
;        if(x%c==0)
;        h=1;

.model small
.stack 100
.data

    x dw 27
    h dw ?
    c db 0
    two db 2

.code
    main proc far
    push ds
    push 0
    mov ax, @data
    mov ds, ax
;----------------------------------------    
    mov ax, x
    
    ;if (x<0) return
    cmp x, 0
    jle end 
    
    mov c , 2
    mov ax, x
    div two
    mov cl, al 
loop: 
    mov bl, c
    cmp bl, cl
    jg end
    
    mov ax, x
    div bl
    cmp al, 0
    je avval    
    
    inc c
    jmp loop
    
    avval: mov h, 1
    jmp end
    
    
        
    end:    ret
  main endp
end main