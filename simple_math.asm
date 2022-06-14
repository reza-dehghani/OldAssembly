;cx = data1*data2
;ax = data3*data4
.model small
.stack 200
.data

data1   db  0x04
data2   db  0x0f
data3   db  0x05
data4   db  0x10
result  dw  ?
     
.code
    main proc far
        push ds
        push 0
        mov ax, @data
        mov ds, ax

        mov al, data1
        mov bl, data2
        mul bl
        mov cx, ax
        mov al,data3
        mov bl, data4
        mul bl
        
        ret
        main endp
        end main