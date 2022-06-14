ssg segment para stack 'stack'
    db 100 dup(?)
ssg ends
dsg segment para data
    a1 dw 81
    a2 dw 56
    b1 dw 14
    b2 dw 25
    c1 dw 0
    c2 dw 0
    c3 dw 0
dsg ends
csg segment para code
    assume ds: dsg, ss: ssg, cs: csg
    
    main proc far
        push ds
        push 0
        mov ax, dsg
        mov ds , ax
        ;----------------
        ; c1 <-- a1 - b1
        ;---------------
        mov ax, a1
        sub ax, b1
        mov c1, ax
        
        ;---------------
        ;c2 <-- a2 - b2
        ;---------------
        mov ax, a2
        sub ax, b2
        mov c2, ax
       
        ret
        main endp
    csg ends
end main