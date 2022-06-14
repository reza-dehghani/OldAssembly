.model small
.stack 100
.data
    a1 dw 11
    a2 dw 14
    b1 dw 46
    b2 dw 55
    
    c1 dw 0
    c2 dw 0
    c3 db 0
.code
    main proc far
    push ds
    push 0
    mov ax, @data
    mov ds, ax
    
        
    mov ax, a1
    add ax, b1
    mov c1, ax
    
    mov ax, a2
    adc ax, b2
    mov c2, ax
           
    adc c3, 0
        
        ret
  main endp
end main