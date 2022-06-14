;char [10] pass;
;cin>> pass;
;j =0; 
;for(int i =0 ; i < ; i++)
;{
;if(p[i] == a[j])
;	e++;
;j++;
;}
;if (e == 8)
; cout<<"yes";
;else
;cout<<"no";

.model small
.stack 100
.data
    line db 'Enter Password:$'
    yes db 'yes$'
    no db 'no$'
    p db 'Assembly$'
    a db 12 , 10 dup(?)
    ten dw 10
    e db 0
.code
;--------------macros-----------
cout macro   
    mov ah , 2
;satr
mov dh, 12
;soton
mov dl, 29
int 10h

    LEA DX , line
    mov ah , 9
    INT 21h
    
    cout endm
getch macro
       mov ah, 1
    int 21h
getch endm

read macro
    
    LEA DX , a
    mov ah , 0Ah
    INT 21h  
    mov a[9], '$'
read endm

check macro
    mov di, 0
    mov si, 2
loop:
   cmp si, 10
   jg endmacro
   mov bl, a[si]
   cmp bl, p[di]
   jne end
   cmp bl, p[di]
   je equal

equal:
    add e , 1
           
   cmp si,10
   inc di
   inc si
   jmp loop

    
end:    

    LEA DX , no
    mov ah , 9   
    INT 21h
    jmp endmacro

cmp e,8
je pass
pass: 
   LEA DX , yes
    mov ah , 9   
    INT 21h
    
        endmacro:                  
check endm


    main proc far
    push ds
    push 0
    mov ax, @data
    mov ds, ax
;----------------------
    cout
    
    read
    
    check 
    
    
    
    
    getch
    
        ret
  main endp
end main