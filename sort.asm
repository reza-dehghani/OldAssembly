.model small
.stack 100
.data
    a db 1,2,3,4,5,6,7,8,9,10
    
.code
    main proc far
    push ds
    push 0
    mov ax, @data
    mov ds, ax

    ;---------------------
    mov si, 0
loop1:
    cmp si , 9
    jge end
    mov di, si
    inc di
loop2:
    cmp di , 10
    jge endloop2
    mov al, a[di]
    cmp a[si],al
    jnl next
    
    mov bl, a[si]
    mov a[si], al
    mov a[di], bl
    
next:    inc di
    jmp loop2

endloop2:
    inc si
    jmp loop1   
    end:    
     ret
  main endp
end main