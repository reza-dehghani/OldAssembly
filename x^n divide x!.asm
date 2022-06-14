.model small
.stack 200
.data
    x dw 5
    n dw 3
    tempn dw 0
    i dw 0
    
    res1 dw 0
    res2 dw 0
    
    z dw 0
.code
    main proc far
        push ds
        push 0
        mov ax, @data
        mov ds, ax
        
        ;res1 = x^n
        mov cx, n
        cmp i , cx
        jge loop2
        
        mov bx, x
        mov res1, bx
        mov i,1
        
loop1:  mov ax, x
        mul res1
        mov res1, ax
        
        inc i
        mov cx, n
        cmp i, cx
        jl loop1
        
        
        
        ;res2 = n!
loop2:  mov bx, n
        mov res2, bx
        mov tempn, bx
        dec tempn
        mov i , 2
        cmp i, bx
        jge final
startloop2:        mov ax, tempn
        mul res2
        mov res2, ax
        dec tempn
        inc i
        mov bx, n
        cmp i, bx
        jl startloop2      
        
final:  mov z, 1
        mov ax, res1
        div res2
        mov z, ax      
        ret
        main endp
    end main