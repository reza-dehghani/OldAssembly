;clear screen    
    mov ah, 0
    mov bh, 65
    mov cl, 0
    mov ch, 0
    mov dl, 79
    mov dh, 24
    int 10h
    
;cout
a db 5, ,3dup(?)
   mov ah, 10
    lea dx,a 
    int 21h
    
;_getch((
mov ah, 1
    int 21h
    
;cout char $   
    mov ah,2
    mov dl, '$'
    int 21h
    
    mov ah, 1
    int 21h
    
; cout string
buffer  db 'Enter a Number: $'   
LEA DX , buffer
    mov ah , 9
    INT 21h
    
;cin
    LEA DX , a
    mov ah , 0Ah
    INT 21h

;move cursor
mov ah , 2
;satr
mov dh, 12
;soton
mov dl, 29
int 10h    
    
;some macro
  gotoxy macro row , col
    mov ah , 2
    mov dh , row
    mov dl , col   
    int 10h
  gotoxy endm   
  
  print macro buffer   
   mov ah , 9
   lea dx , buffer
   int 21h     
  print endm 
  
  getch macro
   mov ah , 1
   int 21h
  getch endm   

    cin macro
       LEA DX , a
    mov ah , 0Ah
    INT 21h
    cin endm

   ;------------------- 
   ;Read Number
    a db 10 , 8 dup(?)
    h dw ?
    x dw ?
    ten dw 10
   ;-------------------
    LEA DX , buffer
    mov ah , 9
    INT 21h
    
    LEA DX , a
    mov ah , 0Ah
    INT 21h
    
    mov ax ,0
    mov si , 2
    mov bl , a[1]
    add bl , 2
    mov bh , 0
    mov h , bx    
loop1:cmp si , h
    JGE endloop
    sub a[si] , 48
    MUL ten
    mov bl , a[si]
    mov bh , 0
    add ax , bx
    inc si
    jmp loop1
endloop: mov x , ax 
;----------------------
   ;Print Number
   ;------------------
    mov a[9] , '$'
    mov si ,8
    mov ax ,x
loop2:cmp ax , 0
    JE  endloop2
    CWD
    DIV ten
    mov a[si] , dl
    add a[si] , 48
    dec si
    jmp loop2
endloop2:inc si   
   
    lea dx , a[si]
    mov ah , 9
    int 21h
   ;------------------
   


     
 ;proc
  getch proc 
   mov ah , 1
   int 21h
   ret
  getch endp
  
  call getch  
  
  
  
  
  
  
  
  
  