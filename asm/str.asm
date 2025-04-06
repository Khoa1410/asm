.model small
.stack 100h
.data
    a db 'nhap input : $'
    b db 'output : $'
    c db 100 dup('$')
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, a
        int 21h
        
        mov ah, 10 
        lea dx, c
        int 21h 
        
        
        mov ah, 2
        mov dl, 0dh  
        int 21h
        
        mov ah, 2
        mov dl, 0ah
        int 21h  
        
        mov ah, 9
        lea dx, b
        int 21h      
        
        mov ah, 9
        lea dx, c + 2
        int 21h
        
        mov ah, 4ch
        int 21h
    main endp
end 
                  
   
        