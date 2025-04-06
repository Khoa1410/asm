.model small   
.stack 100h
.data
    a db 'nhap so: $'
    m dw 10  
    b db 'dap an = $'  
    ifa db '362880$' 
    mb db 'day la truong trinh tinh giai thua tu 1 toi 9$'
    sai db 'gioi han phep tinh la tu 1 toi 9$' 
    bien db 500 dup('$')    
    again db 'ban co muon tinh lai, nhap Y hoac N: $'
    lai db 'nhap lai : $'
    ca db 'ban da nhap sai cau truc$'
    
.code
    main proc
        mov ax, @data
        mov ds, ax  
        
        Begin: 
       
        
        mov ah, 9
        lea dx, mb
        int 21h
        
        mov ah, 2
        mov dl, 0ah
        int 21h
        
        mov ah, 2
        mov dl, 0dh
        int 21h
        
        mov ah, 9
        lea dx, a
        int 21h  
        
        mov ah, 1
        int 21h
        
        sub al, '0'
        mov cx, 0
        mov cl, al  
        
        If:  
            cmp al, 9
            je ifans  
        
        lim:
            cmp al, 9
            ja next        
       
        
        
        mov ah, 2
        mov dl, 0dh
        int 21h
        
        mov dl, 0ah
        int 21h   
        
        mov ah, 9
        lea dx, b
        int 21h
        
        ;cal
        
        mov ax, 1
        mov bx, 1
        
        L:
            mul bx
            inc bx
            cmp bx, cx
            jle L
        
        mov cx, 0
        
        P:
            xor dx, dx
            div m
            add dx, 30h
            push dx 
            inc cx
            cmp ax, 0
            jne P      
            
        K:
            pop dx
            mov ah, 2
            int 21h
            loop K 
        jmp end  
            
        
        
        Ifans:  
            mov ah, 2
            mov dl, 0ah 
            int 21h
            
            mov ah, 2
            mov dl, 0dh
            int 21h 
            
            mov ah, 9
            lea dx, b
            int 21h
            
            mov ah, 9
            lea dx, ifa
            int 21h 
        jmp end
        
        Next: 
            mov ah, 2
            mov dl, 0ah
            int 21h
            
            mov ah, 2
            mov dl, 0dh
            int 21h
            
            mov ah, 9
            lea dx, sai
            int 21h
        
            mov ah, 2
            mov dl, 0ah
            int 21h
        
            mov ah, 2
            mov dl, 0dh
            int 21h  
            
            jmp begin
        
        
        
        
        End:          
            mov ah, 2
            mov dl, 0ah
            int 21h
            
            mov ah, 2
            mov dl, 0dh
            int 21h
            
            mov ah, 9
            lea dx, again
            int 21h 
        Nhap_lai:    
            mov ah, 1
            int 21h
            
            cmp al, 'Y'
            je en
            
            cmp al, 'y'
            je en
            
            cmp al, 'N'
            je e
            
            cmp al, 'n'
            je e
            
            mov ah, 2
            mov dl, 0ah
            int 21h
            
            mov ah, 2
            mov dl, 0dh
            int 21h
            
            mov ah, 9
            lea dx, ca
            int 21h
            
            mov ah, 2
            mov dl, 0ah
            int 21h
            
            mov ah, 2
            mov dl, 0dh
            int 21h
            
            mov ah, 9
            lea dx, lai
            int 21h  
            
            jmp nhap_lai
            
        En:
            mov ah, 2
            mov dl, 0ah
            int 21h
            
            mov ah, 2
            mov dl, 0dh
            int 21h
            
            jmp Begin
            
        E:
            mov ah, 4ch
            int 21h
    main endp
end main
    
    
        
            
                                                                  