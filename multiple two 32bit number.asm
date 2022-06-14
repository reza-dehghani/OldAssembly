.model small
.stack 100
.data
    a1 dw 1
    a2 dw 1
    b1 dw 8
    b2 dw 0
    
    c1 dw 0
    c2 dw 0
    c3 dw 0
    c4 dw 0
    
    
.code
    main proc far
    push ds
    push 0
    mov ax, @data
    mov ds, ax
    
    ;a1*b1    
    mov ax, a1
    mul b1
    mov c1, ax
    mov c2, dx
    
    ;a2*b1
    mov ax, a2
    mul b1
    add c2, ax
    adc c3, dx
    
    ;a1*b2
    mov ax, a1
    mul b2
    add c2, ax
    adc c3, dx
    
    ;b2*a2
    mov ax, a2
    mul b2
    add c3, ax
    adc c4, dx      
            
        ret
  main endp
end main