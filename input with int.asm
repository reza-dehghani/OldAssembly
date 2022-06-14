.model small
.stack 100
.data
        a db 5, , 3 dup(?)
.code
    main proc far
    push ds
    push 0
    mov ax, @data
    mov ds, ax
;-----------------------

    cin macro
       LEA DX , a
    mov ah , 0Ah
    INT 21h
    cin endm
 
    
    cin
    
    mov si, 2
    ;i=0
    mov dl, 0
    
loop1:    cmp dl, a[1]
    jge end
    sub a[si] , 48
    inc dl
    inc si
    jmp loop1
    
    
    
    
    
    end:         
        ret
  main endp
end main