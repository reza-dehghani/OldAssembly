.model small
.stack 100
.data
    line1 db '***********$'
    line2 db 'Micro procesor class$'
    
.code
    main proc far
    push ds
    push 0
    mov ax, @data
    mov ds, ax
;----------------------
    
mov ah , 2
;satr
mov dh, 12
;soton
mov dl, 29
int 10h

    LEA DX , line1
    mov ah , 9
    INT 21h

mov ah , 2
;satr
mov dh, 13
;soton
mov dl, 29
int 10h 
    
     LEA DX , line2
    mov ah , 9
    INT 21h
    
mov ah , 2
;satr
mov dh, 14
;soton
mov dl, 29
int 10h    
     LEA DX , line1
    mov ah , 9
    INT 21h
;-------------------getch    
    mov ah, 1
    int 21h    
        ret
  main endp
end main