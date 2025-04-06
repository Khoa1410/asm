.model small
.stack 100h
.data
    a db 'a : $'    
    b db 'b : $'
    c db 'a + b = $'
    
.code
main proc                     
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a  
    int 21h    
    
    mov ah, 1
    int 21h  
    
    mov bl, al
    sub bl, 30h 
    
    mov ah, 2
    mov dl, 0dh
    int 21h  
    
    mov dl, 0ah
    int 21h
       
    mov ah, 9
    lea dx, b
    int 21h
    
    mov ah, 1
    int 21h  
    
    mov bh, al  
    sub bh, 30h 
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h  
    
    mov ah, 9
    lea dx, c
    int 21h
    
    add bl, bh
    add bl, 30h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah, 4ch
    int 21h
    
    
    
   
    
   
main endp
end main
        