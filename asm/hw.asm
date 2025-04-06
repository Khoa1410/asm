.model small
.stack 100h
.data
    a db 'g$'
    b dw 1

.code
main proc
      
    mov ax, @data
    mov ds, ax 
    
    big: 
    
    mov bx, 97
    mov cx, 104
    
    mov dx, 1
    
    l:  
        mov ah , 2
        mov dx , bx
        int 21h
        
        mov ah, 2
        mov dl, 8
        int 21h
    
        add bx, 1
        cmp bx, cx
        jne l
        
    mov ah, 2 
    mov dl, 104
    int 21h  
    
    
    mov bx, 97
    mov cx, 101      
    inc b
    cmp b, 2
    je l 
    jmp le
    
    le:
    mov ah, 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
     