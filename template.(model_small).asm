.model small
.stack 200
.data

     
.code
    main proc far
        push ds
        push 0
        mov ax, @data
        mov ds, ax

        
        
        ret
        main endp
        end main